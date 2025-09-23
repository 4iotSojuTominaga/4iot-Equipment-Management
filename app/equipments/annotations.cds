using CatalogService as service from '../../srv/cat-service';
annotate service.Equipment with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'EquipmentID',
                Value : EquipmentID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EquiName',
                Value : EquiName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EquipmentType_code',
                Value : EquipmentType_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAPEquipment_code',
                Value : SAPEquipment_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAPEquiType_code',
                Value : SAPEquiType_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAPObjectType_code',
                Value : SAPObjectType_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAPManufacturer_code',
                Value : SAPManufacturer_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAPWorkCentre_code',
                Value : SAPWorkCentre_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'EquipmentID',
            Value : EquipmentID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EquiName',
            Value : EquiName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EquipmentType_code',
            Value : EquipmentType_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SAPEquipment_code',
            Value : SAPEquipment_code,
        },
    ],
    UI.SelectionFields : [
        EquipmentType_code,
        SAPEquipment_code,
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    },
);

annotate service.Equipment with {
    EquipmentType @Common.Label : 'EquipmentType_code'
};

annotate service.Equipment with {
    SAPEquipment @Common.Label : 'SAPEquipment_code'
};

annotate service.Status with @(
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View Status',
    },
);

