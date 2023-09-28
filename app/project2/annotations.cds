using travelService as service from '../../srv/service';

annotate service.Travel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Travel ID',
            Value : travelId,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>EmployeeId}',
            Value : empId_Empid,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Origin}',
            Value : origin,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Destination}',
            Value : destination,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DateOfDeparture}',
            Value : dateOfDeparture,
        },
        {
            $Type : 'UI.DataField',
            Value : travelStatus,
        },
    ]
);
annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'travelType',
                Value : travelType,
            },
            {
                $Type : 'UI.DataField',
                Value : noOfPassengers,
                Label : 'noOfPassengers',
            },
            {
                $Type : 'UI.DataField',
                Label : 'travelMode',
                Value : travelMode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RoundTrip',
                Value : RoundTrip,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>TravelDetails}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Passenger Details',
            ID : 'i18nTravelDetails',
            Target : '@UI.FieldGroup#i18nTravelDetails1',
        },
    ]
);
annotate service.Travel with @(
    UI.HeaderFacets : [],
    UI.FieldGroup #i18nTravelDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : noOfPassengers,
                Label : 'noOfPassengers',
            },{
                $Type : 'UI.DataField',
                Value : travelMode,
                Label : 'travelMode',
            },{
                $Type : 'UI.DataField',
                Value : RoundTrip,
                Label : 'RoundTrip',
            },],
    }
);
annotate service.Travel with @(
    UI.FieldGroup #i18nTravelDetails1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : passengerName,
                Label : 'Passenger Name',
            },{
                $Type : 'UI.DataField',
                Value : origin,
                Label : 'origin',
            },{
                $Type : 'UI.DataField',
                Value : destination,
                Label : 'destination',
            },{
                $Type : 'UI.DataField',
                Value : dateOfDeparture,
                Label : 'dateOfDeparture',
            },{
                $Type : 'UI.DataField',
                Value : dateOfArrival,
                Label : 'dateOfArrival',
            },{
                $Type : 'UI.DataField',
                Value : dateOfReturn,
                Label : 'dateOfReturn',
            },{
                $Type : 'UI.DataField',
                Value : noOfDays,
                Label : 'noOfDays',
            },{
                $Type : 'UI.DataField',
                Value : billable,
                Label : 'billable',
            },{
                $Type : 'UI.DataField',
                Value : Accomandation,
                Label : 'Accomandation',
            },],
    }
);
annotate service.Travel with @(
    UI.SelectionFields : [
        empId_Empid,
        dateOfDeparture,
        dateOfArrival,
        travelStatus,
    ]
);
annotate service.Travel with {
    travelType
    @mandatory;
     noOfPassengers
     @mandatory;
     travelMode
     @mandatory;
     RoundTrip
     @mandatory;
};
annotate service.Travel with {
    empId @Common.Label : '{i18n>EmployeeId}'
};
annotate service.Travel with {
    dateOfDeparture @Common.Label : '{i18n>DateOfDeparture}'
};
annotate service.Travel with {
    travelStatus @Common.Label : '{i18n>TravelStatus}'
};
annotate service.Travel with {
    dateOfArrival @Common.Label : '{i18n>DateOfArrival}'
};
annotate service.Travel with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>TravelId}',
        TypeNamePlural : '{i18n>TravelIds1}',
        Title : {
            $Type : 'UI.DataField',
            Value : travelId,
        },
    }
);
