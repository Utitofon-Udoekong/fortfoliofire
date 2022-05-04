const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { response } = require("express");
admin.initializeApp(functions.config().functions);
const firestore = admin.firestore()
const cors = require('cors')({ origin: '*' });

const { Client, Webhook, resources } = require('coinbase-commerce-node');
const coinbaseSecret = 'your-api-key';
Client.init(coinbaseSecret);

const { Charge } = resources;

exports.scheduleInvestmentFor3Months = functions.pubsub.schedule('0 0 * */3 *').onRun((context) => {
    return functions.https.onCall(async (data, context) => {
        const uid = data.uid
        const docId = data.docId
        const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
        const documentData = reference.get()
    
        const amountInvested = documentData["amount"] ?? 0
        const roi = documentData["roi"] ?? 0
        const duration = documentData["duration"] ?? 3
        const numberOfDays = documentData["numberOfDays"] ?? 0
        const currentRoiForDuration = (roi * duration) / 12
        const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
        const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
        await reference.update({
            planYield: admin.firestore.FieldValue.increment(returnsPerDay)
        })
    })
})
exports.scheduleInvestmentFor6Months = functions.pubsub.schedule('0 0 * */6 *').onRun((context) => {
    return functions.https.onCall(async (data, context) => {
        const uid = data.uid
        const docId = data.docId
        const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
        const documentData = reference.get()
    
        const amountInvested = documentData["amount"] ?? 0
        const roi = documentData["roi"] ?? 0
        const duration = documentData["duration"] ?? 6
        const numberOfDays = documentData["numberOfDays"] ?? 0
        const currentRoiForDuration = (roi * duration) / 12
        const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
        const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
        await reference.update({
            planYield: admin.firestore.FieldValue.increment(returnsPerDay)
        })
    })
})
exports.scheduleInvestmentFor12Months = functions.pubsub.schedule('0 0 * */12 *').onRun((context) => {
    return functions.https.onCall(async (data, context) => {
        const uid = data.uid
        const docId = data.docId
        const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
        const documentData = reference.get()
    
        const amountInvested = documentData["amount"] ?? 0
        const roi = documentData["roi"] ?? 0
        const duration = documentData["duration"] ?? 12
        const numberOfDays = documentData["numberOfDays"] ?? 0
        const currentRoiForDuration = (roi * duration) / 12
        const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
        const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
        await reference.update({
            planYield: admin.firestore.FieldValue.increment(returnsPerDay)
        })
    })
})


exports.endInvestment = functions.firestore.document("/authUsers/{uid}/investments/{docId}").onCreate(async (snapshot, context) => {
    const documentData = snapshot.data();
    const startDate = documentData["paymentDate"]
    const dueDate = documentData["dueDate"]
    const date =  new Date()
    const today = date.toLocaleString()
    
    
})

// exports.createCharge = functions.https.onCall(async (data, context) => {
//   const name = data.name
//   const description = data.description

//   const chargeData = {
//     name: name,
//     description: description,
//     local_price: {
//       currency: 'USD',
//     },
//     pricing_type: 'no_price',
//   };
//   const charge = await Charge.create(chargeData);
//   functions.logger.log(charge)
//   return charge
// })

exports.createCharge = functions.https.onRequest((req, res) => {
    cors(req, res, async () => {
      const details = req.body
      const name = details.name
      const description = details.description
      const chargeData = {
        name: name,
        description: description,
        local_price: {
          currency: 'USD',
        },
        pricing_type: 'no_price',
      };
  
      const charge = await Charge.create(chargeData);
      functions.logger.log(charge)
  
      res.send(charge);
    });
  });
  
  exports.webhookHandler = functions.https.onRequest(async (req, res) => {
    const rawBody = req.rawBody;
    const signature = req.headers['x-cc-webhook-signature'];
    const webhookSecret = 'webhookSecret';
    const id = req.query.uid;
  
    try {
      const event = Webhook.verifyEventBody(rawBody, signature, webhookSecret);
  
      if (event.type === 'charge:pending') {
        // TODO
        // user paid, but transaction not confirm on blockchain yet
      }
  
      if (event.type === 'charge:confirmed') {
        // TODO
        // all good, charge confirmed
      }
  
      if (event.type === 'charge:failed') {
        // TODO
        // charge failed or expired
      }
  
      res.send(`success ${event.id}`);
      
    } catch (error) {
      functions.logger.error(error);
      res.status(400).send('failure!');
    }
  });
  