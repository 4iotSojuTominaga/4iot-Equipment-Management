sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/equipments/test/integration/pages/EquipmentList",
	"ns/equipments/test/integration/pages/EquipmentObjectPage",
	"ns/equipments/test/integration/pages/StatusObjectPage"
], function (JourneyRunner, EquipmentList, EquipmentObjectPage, StatusObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/equipments') + '/index.html',
        pages: {
			onTheEquipmentList: EquipmentList,
			onTheEquipmentObjectPage: EquipmentObjectPage,
			onTheStatusObjectPage: StatusObjectPage
        },
        async: true
    });

    return runner;
});

