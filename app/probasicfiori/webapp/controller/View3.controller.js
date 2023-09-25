sap.ui.define([

    "sap/ui/core/mvc/Controller",

    "sap/m/MessageToast",

    "sap/ui/core/Fragment",

    "sap/ui/model/Filter",

    "sap/ui/model/FilterOperator"

],

    /**

     * @param {typeof sap.ui.core.mvc.Controller} Controller

     */

    function (Controller,MessageToast,Fragment,Filter,FilterOperator) {

        "use strict";

 

        return Controller.extend("probasicfiori.controller.View3", {

            onInit: function () {

 

            },

            onValueHelpClose: function (oEvent) {

                var oSelectedItem = oEvent.getParameter("selectedItem");

               oEvent.getSource().getBinding("items").filter([]);

                if (!oSelectedItem) {

                   

                    return;

                }

   

               this.byId("singleCondition").setValue(oSelectedItem.getTitle());

        },

          onValueHelpSearch: function(oEvent){

            var sValue = oEvent.getParameter("value");

            var oFilter = new Filter("passengerName", FilterOperator.Contains, sValue);

            oEvent.getSource().getBinding("items").filter([oFilter]);

        },

        onOpenDialog : function () {

 

            // create dialog lazily

            if (!this.pDialog) {

                this.pDialog = this.loadFragment({

                    name: "probasicfiori.view.dialog"

                   

                });

            }

            this.pDialog.then(function(oDialog) {

                oDialog.open();

            });

        },

       

       

            onSubmit: function() {

             var ID = this.getView().byId("").getValue();

             var name = this.getView().byId("").getValue();

             var data = {

                     ID: parseInt(ID),

                     name: name

             };

             var odataModel = this.getOwnercomponent().getModel();

              odataModel.create("/Travel",data,{

                success: function(data, response){

                    MessageToast.show("Successfully created");

                },

                error: function(error){

                    MessageToast.show("Error while creating data");

                }

              });

            }

        });

    });