const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { response } = require("express");
admin.initializeApp();

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

exports.incrementInvestment = functions.firestore.document("authUsers/{uid}/investments/{docId}").onCreate(async snapshot => {
    
})

exports.startInvestment = functions.https.onRequest((request, response) => {
    
})