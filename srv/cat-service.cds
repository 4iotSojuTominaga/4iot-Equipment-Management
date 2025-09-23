using { d4iot } from '../db/schema';

/**
 * Service to expose Equipment-related data.
 * The entities defined here will be accessible by the UI.
 */
service CatalogService @(path: '/browse') {
    entity Equipment as projection on d4iot.Equipment;
        @(restrict: [
            { grant: 'read', to: 'authenticated-user' },
            { grant: ['create', 'update', 'delete'], to: 'EquipmentAdmin' }
        ])
        
    entity EquipmentType         as projection on d4iot.EquipmentType;
    entity Status                as projection on d4iot.Status;
    entity Driver                as projection on d4iot.Driver;
    entity SAPEquipment          as projection on d4iot.SAPEquipment;
    entity SAPEquiType           as projection on d4iot.SAPEquiType;
    entity SAPObjectType         as projection on d4iot.SAPObjectType;
    entity SAPManufacturer       as projection on d4iot.SAPManufacturer;
    entity SAPWorkCentre         as projection on d4iot.SAPWorkCentre;
}