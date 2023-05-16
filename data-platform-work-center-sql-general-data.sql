CREATE TABLE `data_platform_work_center_general_data`
(
    `WorkCenter`                   int(16) NOT NULL,
    `WorkCenterType`               varchar(2) NOT NULL,
    `WorkCenterName`               varchar(200) NOT NULL,
    `BusinessPartner`              int(12) NOT NULL,
    `Plant`                        varchar(4) NOT NULL,
    `WorkCenterCategory`           varchar(4) DEFAULT NULL,
    `WorkCenterResponsible`        varchar(3) DEFAULT NULL,
    `SupplyArea`                   varchar(10) DEFAULT NULL,
    `WorkCenterUsage`              varchar(3) DEFAULT NULL,
    `MatlCompIsMarkedForBackflush` tinyint(1) DEFAULT NULL,
    `WorkCenterLocation`           varchar(100) DEFAULT NULL,
    `CapacityInternalID`           varchar(8) DEFAULT NULL,
    `CapacityCategoryCode`         varchar(3) DEFAULT NULL,
    `ValidityStartDate`            date DEFAULT NULL,
    `ValidityEndDate`              date DEFAULT NULL,
    `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`WorkCenter`),

    CONSTRAINT `DPFMWorkCenterDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
