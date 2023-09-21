// const cds = require('@sap/cds');

// module.exports=(srv)=>{

   

//     srv.before('POST','travel',async(req)=>{

       
//      try{
//        let data= await req.data;
    
       
//       const tx=cds.transaction(req.data)

//       const affectedRows =  tx.run (

//         INSERT= {INSERT:{

//             into: { ref: ["Travel"] },

//             columns: [ "travelId",
//             "empId",
//             "origin",
//             "destination",
//             "dateOfDeparture",
//             "dateOfArrival",
//             "dateOfReturn",
//             "description",
//             "price",
//             "travelStatus",
//             "noOfDays",
//             "noOfPassengers",
//             "passengerName",
//             "travelType",
//             "travelCity",
//             "travelMode",
//             "RoundTrip",
//             "Accomandation",
//             "billable"],

//             values: [ 
//             data.travelId,
//             data.empId,
//             data.origin,
//             data.destination,
//             data.dateOfDeparture,
//             data.dateOfArrival,
//             data.dateOfReturn,
//             data.description,
//             data.price,
//             data.travelStatus,
//             data.noOfDays,
//             data.noOfPassengers,
//             data.passengerName,
//             data.travelType,
//             data.travelCity,
//             data.travelMode,
//             data.RoundTrip,
//             data.Accomandationdata,
//             data.billable]

//           }}

         

//       )
//         }catch(error){
//             console.log(error.message)

//         }

//      if (affectedRows > 0)  console.log(200, "Sucess")

    

// })
// srv.on("DELETE", "travel", async (req) => {

 

//     let id = req.data.travelId_Empid;

//     console.log("Deletig header " + id);



//     await UPDATE("Travel").set({

//         DELETED: true

//     }).where({

//         ID: id

//     });



// });

// }

   



