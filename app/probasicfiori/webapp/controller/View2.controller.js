sap.ui.define([

    "sap/ui/core/mvc/Controller"

],

    /**

     * @param {typeof sap.ui.core.mvc.Controller} Controller

     */

    function (Controller) {

        "use strict";

 

        return Controller.extend("probasicfiori.controller.View2", {

            onInit: function () {

 

            },

            onNext: function(oEvent){

                var oRouter = this.getOwnerComponent().getRouter();

                oRouter.navTo("RouteView3");

            }

        });

    });

 