using CatalogService from '../../srv/cat-service.cds';

annotate CatalogService.Equipment with @(
  UI.LineItem: [
    {
      Value: EquipmentID,
      Label: 'Equipment ID'
    },
    {
      Value: EquiName,
      Label: 'Equipment Name'
    },
    {
      Value: Description,
      Label: 'Description'
    }
  ],
  UI.SelectionFields: [
    EquipmentID,
    EquiName
  ]
);