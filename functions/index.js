require('dotenv').config()
const functions = require("firebase-functions/v2");
const admin = require("firebase-admin");
// const { response } = require("express");
const app = admin.initializeApp(functions.config().functions);
const {getFirestore} = require("firebase-admin/firestore")
const firestore = getFirestore(app)
// const cors = require('cors')({ origin: '*' });

const { Client, Webhook, resources } = require('coinbase-commerce-node');
const { onMessagePublished } = require('firebase-functions/v2/pubsub');
const coinbaseSecret = process.env.COINBASE_API_KEY;
Client.init(coinbaseSecret);

const { Charge } = resources;

// exports.scheduleInvestmentFor3Months = functions.pubsub.schedule('0 0 * */3 *').onRun((context) => {
//     return functions.https.onCall(async (data, context) => {
//         const uid = data.uid
//         const docId = data.docId
//         const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
//         const documentData = reference.get()
    
//         const amountInvested = documentData["amount"] ?? 0
//         const roi = documentData["roi"] ?? 0
//         const duration = documentData["duration"] ?? 3
//         const numberOfDays = documentData["numberOfDays"] ?? 0
//         const currentRoiForDuration = (roi * duration) / 12
//         const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
//         const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
//         await reference.update({
//             planYield: admin.firestore.FieldValue.increment(returnsPerDay)
//         })
//     })
// })
// exports.scheduleInvestmentFor6Months = functions.pubsub.schedule('0 0 * */6 *').onRun((context) => {
//     return functions.https.onCall(async (data, context) => {
//         const uid = context.auth.uid
//         const docId = data.docId
//         const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
//         const documentData = await reference.get()
//         const amountInvested = documentData["amount"] ?? 0
//         const roi = documentData["roi"] ?? 0
//         const duration = documentData["duration"] ?? 6
//         const numberOfDays = documentData["numberOfDays"] ?? 0
//         const currentRoiForDuration = (roi * duration) / 12
//         const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
//         const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
//         await reference.update({
//             planYield: admin.firestore.FieldValue.increment(returnsPerDay)
//         })
//     })
// })
// exports.scheduleInvestmentFor12Months = functions.pubsub.schedule('0 0 * */12 *').onRun((context) => {
//     return functions.https.onCall(async (data, context) => {
//         const uid = context.auth.uid
//         const docId = data.docId
//         const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
//         const documentData = reference.get()
    
//         const amountInvested = documentData["amount"] ?? 0
//         const roi = documentData["roi"] ?? 0
//         const duration = documentData["duration"] ?? 12
//         const numberOfDays = documentData["numberOfDays"] ?? 0
//         const currentRoiForDuration = (roi * duration) / 12
//         const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
//         const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
//         await reference.update({
//             planYield: admin.firestore.FieldValue.increment(returnsPerDay)
//         })
//     })
// })

// async function handle12MonthsInvestmentTask(data, context) {
//   const uid = context.auth.uid
//         const docId = data.docId
//         const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
//         const documentData = reference.get()
    
//         const amountInvested = documentData["amount"] ?? 0
//         const roi = documentData["roi"] ?? 0
//         const duration = documentData["duration"] ?? 12
//         const numberOfDays = documentData["numberOfDays"] ?? 0
//         const currentRoiForDuration = (roi * duration) / 12
//         const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
//         const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
//         return await reference.update({
//             planYield: admin.firestore.FieldValue.increment(returnsPerDay)
//         })
// }
// async function handle6MonthsInvestmentTask(data, context) {
//   const uid = context.auth.uid
//         const docId = data.docId
//         const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
//         const documentData = reference.get()
    
//         const amountInvested = documentData["amount"] ?? 0
//         const roi = documentData["roi"] ?? 0
//         const duration = documentData["duration"] ?? 6
//         const numberOfDays = documentData["numberOfDays"] ?? 0
//         const currentRoiForDuration = (roi * duration) / 6
//         const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
//         const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
//         return await reference.update({
//             planYield: admin.firestore.FieldValue.increment(returnsPerDay)
//         })
// }
async function handle3MonthsInvestmentTask(data, context) {
  const uid = context.auth.uid
        const docId = data.docId
        const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
        const documentData = reference.get()
    
        const amountInvested = documentData["amount"] ?? 0
        const roi = documentData["roi"] ?? 0
        const duration = documentData["duration"] ?? 3
        const numberOfDays = documentData["numberOfDays"] ?? 0
        const currentRoiForDuration = (roi * duration) / 3
        const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
        const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
        return await reference.update({
            planYield: admin.firestore.FieldValue.increment(returnsPerDay)
        })
}

// exports.scheduleInvestmentFor12Months = functions.pubsub.schedule('0 0 * */12 *')
//     .onRun((context) => await handle12MonthsInvestmentTask({ scheduled: true }, context));
// exports.scheduleInvestmentFor6Months = functions.pubsub.schedule('0 0 * */6 *')
//     .onRun((context) => await handle12MonthsInvestmentTask({ scheduled: true }, context));
exports.scheduleInvestmentFor3Months = functions.pubsub.schedule('0 0 * */3 *')
    .onRun(async (context) => await handle3MonthsInvestmentTask({}, context));

// exports.invest12Months = functions.https.onCall(handle12MonthsInvestmentTask);
// exports.invest6Months = functions.https.onCall(handle6MonthsInvestmentTask);
exports.invest3Months = functions.https.onCall(async (data, context) =>{
  const uid = context.auth.uid
        const docId = data.docId
        const reference = firestore.collection("authUsers").doc(uid).collection("investments").doc(docId)
        const documentData = reference.get()
    
        const amountInvested = documentData["amount"] ?? 0
        const roi = documentData["roi"] ?? 0
        const duration = documentData["duration"] ?? 3
        const numberOfDays = documentData["numberOfDays"] ?? 0
        const currentRoiForDuration = (roi * duration) / 3
        const returnsAtEndOfDuration = currentRoiForDuration * amountInvested
        const returnsPerDay = returnsAtEndOfDuration / numberOfDays
    
        return await reference.update({
            planYield: admin.firestore.FieldValue.increment(returnsPerDay)
        })
});

// exports.endInvestment = functions.firestore.document("/authUsers/{uid}/investments/{docId}").onCreate(async (snapshot, context) => {
//     const documentData = snapshot.data();
//     const startDate = documentData["paymentDate"]
//     const dueDate = documentData["dueDate"]
//     const date =  new Date()
//     const today = date.toLocaleString()
    
// })


// exports.createCharge = functions.https.onRequest((req, res) => {
//     cors(req, res, async () => {
//       const chargeData = {
//         name: "Fort Crypto",
//         description: "Investment",
//         local_price: {
//           currency: 'USD',
//           amount: req.query.amount
//         },
//         pricing_type: 'fixed_price',
//       };
  
//       const charge = await Charge.create(chargeData);
//       functions.logger.log(charge)
  
//       res.send(charge);
//     });
//   });

  exports.webhookHandler = functions.https.onRequest(async (req, res) => {
    const rawBody = req.rawBody;
    const signature = req.headers['x-cc-webhook-signature'];
    const webhookSecret = process.env.COINBASE_WEBHOOK_SECRET;
  
    try {
      const event = Webhook.verifyEventBody(rawBody, signature, webhookSecret);
  
      res.send(`${event.id}`);
      
    } catch (error) {
      functions.logger.error(error);
      res.status(400).send('failure!');
    }
  });
  