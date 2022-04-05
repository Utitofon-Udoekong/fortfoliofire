const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { response } = require("express");
admin.initializeApp(functions.config().functions);
const firestore = admin.firestore()

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

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
