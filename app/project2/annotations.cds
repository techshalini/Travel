using travelService as service from '../../srv/service';

annotate service.Travel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'travelId',
            Value : travelId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'empId_Empid',
            Value : empId_Empid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'origin',
            Value : origin,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destination',
            Value : destination,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dateOfDeparture',
            Value : dateOfDeparture,
        },
    ]
);
annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'travelId',
                Value : travelId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'empId_Empid',
                Value : empId_Empid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'origin',
                Value : origin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destination',
                Value : destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfDeparture',
                Value : dateOfDeparture,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfArrival',
                Value : dateOfArrival,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfReturn',
                Value : dateOfReturn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'travelStatus',
                Value : travelStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'noOfDays',
                Value : noOfDays,
            },
            {
                $Type : 'UI.DataField',
                Label : 'noOfPassengers',
                Value : noOfPassengers,
            },
            {
                $Type : 'UI.DataField',
                Label : 'passengerName',
                Value : passengerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'travelType',
                Value : travelType,
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
            {
                $Type : 'UI.DataField',
                Label : 'Accomandation',
                Value : Accomandation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'billable',
                Value : billable,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
