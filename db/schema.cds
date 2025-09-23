using {
    sap.common.CodeList,
    managed
} from '@sap/cds/common';

namespace d4iot;

/**
 * Entity for the Equipment master data.
 * The primary key is the EquipmentID.
 */
entity Equipment : managed {
    key EquipmentID  : String(20);
    EquiName         : localized String(255);
    Description      : localized String(255);
    EquipmentType    : Association to EquipmentType;
    SAPEquipment     : Association to SAPEquipment;
    SAPEquiType      : Association to SAPEquiType;
    SAPObjectType    : Association to SAPObjectType;
    SAPManufacturer  : Association to SAPManufacturer;
    SAPWorkCentre    : Association to SAPWorkCentre;
    toStatus         : Association to many Status
        on toStatus.Equipment = $self;
    toDriver         : Association to many Driver
        on toDriver.Equipment = $self;
}

/**
 * Entity for the Equipment Status.
 * The primary key is the StatusID.
 */
entity Status : managed {
    key StatusID   : String(20);
    StatusDesc     : localized String(255);
    Equipment      : Association to Equipment;
}

/**
 * Entity for the Driver.
 * The primary key is the DriverID.
 */
entity Driver : managed {
    key DriverID   : String(20);
    Description    : localized String(255);
    Equipment      : Association to Equipment;
}

/**
 * Code list for Equipment Type.
 */
entity EquipmentType : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}

/**
 * Code list for SAP Equipment.
 */
entity SAPEquipment : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}

/**
 * Code list for SAP Equi Type.
 */
entity SAPEquiType : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}

/**
 * Code list for SAP Object Type.
 */
entity SAPObjectType : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}

/**
 * Code list for SAP Manufacturer.
 */
entity SAPManufacturer : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}

/**
 * Code list for SAP Work Centre.
 */
entity SAPWorkCentre : CodeList {
    key code         : String(20);
    descr            : localized String(255);
}
