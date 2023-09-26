CREATE TABLE `data_platform_work_center_production_capacity_data`
(
    `WorkCenter`                                     int(16) NOT NULL,
    `WorkCenterProductionCapacityID`                 int(4) NOT NULL,
    `BusinessPartner`                                int(12) NOT NULL,
    `Plant`                                          varchar(4) NOT NULL,
    `Product`                                        varchar(40) NOT NULL,
    `CapacityFormula`                                varchar(20) NOT NULL,
    `CalculatedCapacityQuantityInProductionUnit`     float(15) NOT NULL,
    `CreationDate`                                   date NOT NULL,
    `LastChangeDate`                                 date NOT NULL,
    `IsMarkedForDeletion`                            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`WorkCenter`, `WorkCenterProductionCapacityID`, `BusinessPartner`, `Plant`, `Product`),

    CONSTRAINT `DPFMWorkCenterProductionCapacityData_fk` FOREIGN KEY (`WorkCenter`) REFERENCES `data_platform_work_center_general_data` (`WorkCenter`),
    -- CONSTRAINT `DPFMWorkCenterProductionCapacityDataProduct_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_mater_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`) テーブルなし

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
