CREATE TABLE `data_platform_work_center_general_data`
(
    `WorkCenter`                       int(16) NOT NULL,
    `WorkCenterType`                   varchar(2) NOT NULL,
    `WorkCenterName`                   varchar(200) NOT NULL,
    `BusinessPartner`                  int(12) NOT NULL,
    `Plant`                            varchar(4) NOT NULL,
    `WorkCenterCategory`               varchar(4) DEFAULT NULL,
    `WorkCenterResponsible`            varchar(3) DEFAULT NULL,
    `SupplyArea`                       varchar(10) DEFAULT NULL,
    `WorkCenterUsage`                  varchar(3) DEFAULT NULL,
    `ComponentIsMarkedForBackflush`    tinyint(1) DEFAULT NULL,
    `WorkCenterLocation`               varchar(100) DEFAULT NULL,
    `CapacityCategory`                 varchar(20) NOT NULL,
    `CapacityQuantityUnit`             varchar(3) NOT NULL,
    `CapacityQuantity`                 float(15) NOT NULL,
    `ValidityStartDate`                date NOT NULL,
    `ValidityEndDate`                  date NOT NULL,
    `CreationDate`                     date NOT NULL,
    `LastChangeDate`                   date NOT NULL,
    `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`WorkCenter`),

    CONSTRAINT `DPFMWorkCenterDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMWorkCenterDataProductionCapacityQuantityUnit_fk` FOREIGN KEY (`ProductionCapacityQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
