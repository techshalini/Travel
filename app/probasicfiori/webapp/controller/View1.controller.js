sap.ui.define([

    "sap/ui/core/mvc/Controller",

    "sap/ui/model/Filter",

    "sap/ui/model/FilterOperator",

    "sap/ui/core/Fragment"

],

    /**

     * @param {typeof sap.ui.core.mvc.Controller} Controller

     */

    function (Controller,Filter,FilterOperator,Fragment) {

        "use strict";

 

        return Controller.extend("probasicfiori.controller.View1", {

            onInit: function () {

               

            },

            onpage4: function(oEvent){
                var oItem = oEvent.getSource();

                var oRouter = this.getOwnerComponent().getRouter();

                oRouter.navTo("RouteView4", {
                    invoicePath: window.encodeURIComponent(oItem.getBindingContext().getPath().substr(1))
                });

            },

            onPress1: function () {

           

                var oRouter = this.getOwnerComponent().getRouter();

                oRouter.navTo("RouteView2");

            },

            onSearch: function(oEvent){

             var oOrigin = this.getView().byId("input1").getValue();            

             var oSearch = oEvent.getParameter("query");

             var oFilter = new Filter("EmployId",FilterOperator.Contains, oOrigin);            

             var oList = this.getView().byId("table");

             var aFilter = oFilter;

             oList.getBinding("items").filter(aFilter);

 

            }

           

           

        });

    });