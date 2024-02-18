-- To use the database , create a database with the name :AirBnB_Project
-- you can use the following script: CREATE DATABASE AirBnB_Project;
-- after creating the database you can run the scripts below


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AirBnB_Project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AirBnB_Project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AirBnB_Project` DEFAULT CHARACTER SET utf8 ;
USE `AirBnB_Project` ;

-- -----------------------------------------------------
-- Table `AirBnB_Project`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`User` (
  `UserID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Phone_Number` VARCHAR(20) NULL,
  `Social_Media_Link` VARCHAR(255) NULL DEFAULT NULL,
  `Preferences` TEXT NULL DEFAULT NULL,
  `Rating` DECIMAL(3,2) NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Host`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Host` (
  `HostID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `AboutMe` TEXT NULL,
  `Property_Count` INT NULL DEFAULT NULL,
  `Profile_Picture` MEDIUMBLOB NOT NULL,
  PRIMARY KEY (`HostID`),
  INDEX `fk_Host_User1_idx` (`UserID` ASC) VISIBLE,
  CONSTRAINT `fk_Host_User1`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Guest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Guest` (
  `GuestID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `AboutMe` TEXT NULL DEFAULT NULL,
  `Booking_Count` INT NULL DEFAULT NULL,
  `Profile_Picture` MEDIUMBLOB NULL DEFAULT NULL,
  `Preferences` TEXT NULL DEFAULT NULL,
  `TravelHistory` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`GuestID`),
  INDEX `fk_Guest_User1_idx` (`UserID` ASC) VISIBLE,
  CONSTRAINT `fk_Guest_User1`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PropertyCategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PropertyCategory` (
  `CategoryID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`CategoryID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PropertyLocation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PropertyLocation` (
  `LocationID` INT NOT NULL AUTO_INCREMENT,
  `Address` TEXT NOT NULL,
  `Latitude` DECIMAL(10,6) NOT NULL,
  `Longitude` DECIMAL(10,6) NOT NULL,
  PRIMARY KEY (`LocationID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`City`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`City` (
  `CityID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(270) NOT NULL,
  `Country` VARCHAR(270) NOT NULL,
  PRIMARY KEY (`CityID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Property` (
  `PropertyID` INT NOT NULL AUTO_INCREMENT,
  `HostID` INT NOT NULL,
  `Title` VARCHAR(255) NOT NULL,
  `CategoryID` INT NOT NULL,
  `CityID` INT NOT NULL,
  `LocationID` INT NOT NULL,
  `Description` TEXT NOT NULL,
  `Price` DECIMAL(10,2) NOT NULL,
  `Rating` DECIMAL(3,2) NULL DEFAULT NULL,
  `DateCreated` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `NumberOfRooms` INT NOT NULL,
  `NumberOfBedrooms` INT NOT NULL,
  `NumberOfBathrooms` INT NOT NULL,
  `PropertySize` INT NOT NULL,
  INDEX `fk_Property_HostID` (`HostID` ASC) VISIBLE,
  PRIMARY KEY (`PropertyID`),
  INDEX `fk_Property_CategoryID_idx` (`CategoryID` ASC) VISIBLE,
  INDEX `fk_Property_PropertyLocation1_idx` (`LocationID` ASC) VISIBLE,
  INDEX `fk_Property_City1_idx` (`CityID` ASC) VISIBLE,
  CONSTRAINT `fk_Property_HostID`
    FOREIGN KEY (`HostID`)
    REFERENCES `AirBnB_Project`.`Host` (`HostID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Property_CategoryID`
    FOREIGN KEY (`CategoryID`)
    REFERENCES `AirBnB_Project`.`PropertyCategory` (`CategoryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Property_PropertyLocation1`
    FOREIGN KEY (`LocationID`)
    REFERENCES `AirBnB_Project`.`PropertyLocation` (`LocationID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Property_City1`
    FOREIGN KEY (`CityID`)
    REFERENCES `AirBnB_Project`.`City` (`CityID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Booking` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `GuestID` INT NOT NULL,
  `PropertyID` INT NOT NULL,
  `Check_in_Date` DATE NOT NULL,
  `Check_out_Date` DATE NOT NULL,
  `Total_Price` DECIMAL(10,2) NULL DEFAULT NULL,
  `Host_Income` DECIMAL(10,2) NULL DEFAULT NULL,
  `Host_Commission` DECIMAL(10,2) NULL DEFAULT NULL,
  `Guest_Commission` DECIMAL(10,2) NULL DEFAULT NULL,
  `BookingStatus` ENUM('Booked', 'Failed') NULL DEFAULT NULL,
  `ProcessedFlag` ENUM('Processed', 'Unprocessed') NULL DEFAULT 'Unprocessed',
  PRIMARY KEY (`BookingID`),
  INDEX `fk_Booking_GuestID` (`GuestID` ASC) VISIBLE,
  INDEX `fk_Booking_PropertyID` (`PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_Booking_GuestID`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Booking_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Payment_Method`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Payment_Method` (
  `PaymentMethodID` INT NOT NULL AUTO_INCREMENT,
  `PaymentMethodName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PaymentMethodID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PaymentTransaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PaymentTransaction` (
  `TransactionID` INT NOT NULL AUTO_INCREMENT,
  `GuestID` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `Amount` DECIMAL(10,2) NULL DEFAULT NULL,
  `PaymentMethodID` INT NOT NULL,
  `TransactionDate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentProcedure` ENUM('Successful', 'Failed') NULL DEFAULT NULL,
  `PaymentStatus` ENUM('Paid', 'Failed') NULL DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  INDEX `fk_PaymentTransaction_GuestID` (`GuestID` ASC) VISIBLE,
  INDEX `fk_PaymentTransaction_BookingID` (`BookingID` ASC) VISIBLE,
  INDEX `fk_PaymentTransaction_PaymentMethodID_idx` (`PaymentMethodID` ASC) VISIBLE,
  CONSTRAINT `fk_PaymentTransaction_GuestID`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_PaymentTransaction_BookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `AirBnB_Project`.`Booking` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_PaymentTransaction_PaymentMethodID`
    FOREIGN KEY (`PaymentMethodID`)
    REFERENCES `AirBnB_Project`.`Payment_Method` (`PaymentMethodID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Review` (
  `ReviewID` INT NOT NULL AUTO_INCREMENT,
  `PropertyID` INT NOT NULL,
  `GuestID` INT NOT NULL,
  `Rating` DECIMAL(3,2) NOT NULL,
  `Comment` TEXT NULL DEFAULT NULL,
  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ReviewID`),
  INDEX `fk_Review_PropertyID` (`PropertyID` ASC) VISIBLE,
  INDEX `fk_Review_GuestID` (`GuestID` ASC) VISIBLE,
  CONSTRAINT `fk_Review_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Review_GuestID`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Amenity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Amenity` (
  `AmenityID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`AmenityID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PropertyAmenity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PropertyAmenity` (
  `PropertyID` INT NOT NULL,
  `AmenityID` INT NOT NULL,
  INDEX `fk_PropertyAmenity_PropertyID` (`PropertyID` ASC) VISIBLE,
  INDEX `fk_PropertyAmenity_AmenityID` (`AmenityID` ASC) VISIBLE,
  PRIMARY KEY (`AmenityID`, `PropertyID`),
  CONSTRAINT `fk_PropertyAmenity_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_PropertyAmenity_AmenityID`
    FOREIGN KEY (`AmenityID`)
    REFERENCES `AirBnB_Project`.`Amenity` (`AmenityID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`SocialNetwork`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`SocialNetwork` (
  `SocialNetworkID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`SocialNetworkID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserSocialNetwork`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserSocialNetwork` (
  `UserSocialNetworkID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `SocialNetworkID` INT NOT NULL,
  `Profile_Link` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`UserSocialNetworkID`),
  INDEX `fk_UserSocialNetwork_UserID` (`UserID` ASC) VISIBLE,
  INDEX `fk_UserSocialNetwork_SocialNetworkID` (`SocialNetworkID` ASC) VISIBLE,
  CONSTRAINT `fk_UserSocialNetwork_UserID`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_UserSocialNetwork_SocialNetworkID`
    FOREIGN KEY (`SocialNetworkID`)
    REFERENCES `AirBnB_Project`.`SocialNetwork` (`SocialNetworkID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserRating` (
  `UserRatingID` INT NOT NULL AUTO_INCREMENT,
  `RatedUserID` INT NOT NULL,
  `RatedByUserID` INT NOT NULL,
  `Rating` DECIMAL(3,2) NOT NULL,
  `Comment` TEXT NULL,
  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserRatingID`),
  INDEX `fk_UserRating_RatedUserID` (`RatedUserID` ASC) VISIBLE,
  INDEX `fk_UserRating_RatedByUserID` (`RatedByUserID` ASC) VISIBLE,
  CONSTRAINT `fk_UserRating_RatedUserID`
    FOREIGN KEY (`RatedUserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION,
  CONSTRAINT `fk_UserRating_RatedByUserID`
    FOREIGN KEY (`RatedByUserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserFeedbackCategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserFeedbackCategory` (
  `FeedbackCategoryID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`FeedbackCategoryID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserFeedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserFeedback` (
  `FeedbackID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `FeedbackCategoryID` INT NOT NULL,
  `Comment` TEXT NOT NULL,
  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FeedbackID`),
  INDEX `fk_UserFeedback_UserID` (`UserID` ASC) VISIBLE,
  INDEX `fk_UserFeedback_FeedbackCategoryID` (`FeedbackCategoryID` ASC) VISIBLE,
  CONSTRAINT `fk_UserFeedback_UserID`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION,
  CONSTRAINT `fk_UserFeedback_FeedbackCategoryID`
    FOREIGN KEY (`FeedbackCategoryID`)
    REFERENCES `AirBnB_Project`.`UserFeedbackCategory` (`FeedbackCategoryID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PropertyPhotos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PropertyPhotos` (
  `PhotoID` INT NOT NULL AUTO_INCREMENT,
  `PropertyID` INT NOT NULL,
  `ImageData` MEDIUMBLOB NOT NULL,
  PRIMARY KEY (`PhotoID`),
  INDEX `fk_PropertyPhotos_PropertyID` (`PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_PropertyPhotos_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Message` (
  `MessageID` INT NOT NULL AUTO_INCREMENT,
  `Content` TEXT NOT NULL,
  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MessageID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserMessage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserMessage` (
  `UserMessageID` INT NOT NULL AUTO_INCREMENT,
  `SenderID` INT NOT NULL,
  `ReceiverID` INT NOT NULL,
  `MessageID` INT NOT NULL,
  PRIMARY KEY (`UserMessageID`),
  INDEX `fk_UserMessage_SenderID` (`SenderID` ASC) VISIBLE,
  INDEX `fk_UserMessage_ReceiverID` (`ReceiverID` ASC) VISIBLE,
  INDEX `fk_UserMessage_MessageID` (`MessageID` ASC) VISIBLE,
  CONSTRAINT `fk_UserMessage_SenderID`
    FOREIGN KEY (`SenderID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION,
  CONSTRAINT `fk_UserMessage_ReceiverID`
    FOREIGN KEY (`ReceiverID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION,
  CONSTRAINT `fk_UserMessage_MessageID`
    FOREIGN KEY (`MessageID`)
    REFERENCES `AirBnB_Project`.`Message` (`MessageID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`UserFavorite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`UserFavorite` (
  `FavoriteID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `PropertyID` INT NOT NULL,
  PRIMARY KEY (`FavoriteID`),
  INDEX `fk_UserFavorite_UserID` (`UserID` ASC) VISIBLE,
  INDEX `fk_UserFavorite_PropertyID` (`PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_UserFavorite_UserID`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_UserFavorite_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`SavedProperty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`SavedProperty` (
  `SavedPropertyID` INT NOT NULL AUTO_INCREMENT,
  `GuestID` INT NOT NULL,
  `PropertyID` INT NOT NULL,
  PRIMARY KEY (`SavedPropertyID`),
  INDEX `fk_SavedProperty_GuestID` (`GuestID` ASC) VISIBLE,
  INDEX `fk_SavedProperty_PropertyID` (`PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_SavedProperty_GuestID`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_SavedProperty_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Promotions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Promotions` (
  `PropertyID` INT NOT NULL,
  `Title` VARCHAR(255) NOT NULL,
  `Description` TEXT NOT NULL,
  `Discount` DECIMAL(5,2) NOT NULL,
  `Start_Date` DATE NOT NULL,
  `End_Date` DATE NOT NULL,
  INDEX `fk_Promotion_PropertyID` (`PropertyID` ASC) VISIBLE,
  PRIMARY KEY (`PropertyID`),
  CONSTRAINT `fk_Promotion_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`));


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Reservation` (
  `GuestID` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `PropertyID` INT NOT NULL,
  INDEX `fk_Reservation_GuestID_idx` (`GuestID` ASC) VISIBLE,
  INDEX `fk_Reservation_Booking1_idx` (`BookingID` ASC) VISIBLE,
  INDEX `fk_Reservation_Property1_idx` (`PropertyID` ASC) VISIBLE,
  PRIMARY KEY (`GuestID`, `BookingID`, `PropertyID`),
  CONSTRAINT `fk_Reservation_GuestID`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Reservation_BookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `AirBnB_Project`.`Booking` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Reservation_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`HostBankingInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`HostBankingInfo` (
  `BankingInfoID` INT NOT NULL AUTO_INCREMENT,
  `HostID` INT NOT NULL,
  `BankName` VARCHAR(255) NOT NULL,
  `AccountHolderName` VARCHAR(255) NOT NULL,
  `AccountNumber` INT NOT NULL,
  `RoutingNumber` INT NOT NULL,
  PRIMARY KEY (`BankingInfoID`),
  INDEX `fk_HostBankingInfo_HostID_idx` (`HostID` ASC) VISIBLE,
  CONSTRAINT `fk_HostBankingInfo_HostID`
    FOREIGN KEY (`HostID`)
    REFERENCES `AirBnB_Project`.`Host` (`HostID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PayoutToHost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PayoutToHost` (
  `PayoutID` INT NOT NULL AUTO_INCREMENT,
  `HostID` INT NOT NULL,
  `BankName` VARCHAR(255) NOT NULL,
  `AccountHolderName` VARCHAR(70) NOT NULL,
  `AccountNumber` INT NOT NULL,
  `RoutingNumber` VARCHAR(45) NOT NULL,
  `Amount` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`PayoutID`),
  INDEX `fk_PayoutToHost_HostBankingInfo1_idx` (`HostID` ASC) VISIBLE,
  CONSTRAINT `fk_PayoutToHost_HostID`
    FOREIGN KEY (`HostID`)
    REFERENCES `AirBnB_Project`.`HostBankingInfo` (`HostID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`ExpectedIncome`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`ExpectedIncome` (
  `ExpectedIncomeID` INT NOT NULL AUTO_INCREMENT,
  `HostID` INT NOT NULL,
  `PropertyID` INT NOT NULL,
  `ExpectedNightlyRate` DECIMAL(10,2) NULL DEFAULT NULL,
  `YearlyExpectedIncome` DECIMAL(15,2) NULL DEFAULT NULL,
  `MonthlyExpectedIncome` DECIMAL(10,2) NULL DEFAULT NULL,
  `OccupancyRate` DECIMAL(5,2) NULL DEFAULT NULL,
  PRIMARY KEY (`ExpectedIncomeID`),
  INDEX `fk_ExpectedIncome_Host1_idx` (`HostID` ASC) VISIBLE,
  INDEX `fk_ExpectedIncome_Property1_idx` (`PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_ExpectedIncome_HostID`
    FOREIGN KEY (`HostID`)
    REFERENCES `AirBnB_Project`.`Host` (`HostID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_ExpectedIncome_PropertyID`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`GuestArrival`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`GuestArrival` (
  `ArrivalID` INT NOT NULL AUTO_INCREMENT,
  `BookingID` INT NOT NULL,
  `GuestID` INT NOT NULL,
  `HostID` INT NOT NULL,
  `ArrivalTime` TIMESTAMP NOT NULL,
  PRIMARY KEY (`ArrivalID`),
  INDEX `fk_GuestArrival_Booking1_idx` (`BookingID` ASC) VISIBLE,
  INDEX `fk_GuestArrival_Guest1_idx` (`GuestID` ASC) VISIBLE,
  INDEX `fk_GuestArrival_Host1_idx` (`HostID` ASC) VISIBLE,
  CONSTRAINT `fk_GuestArrival_Booking1`
    FOREIGN KEY (`BookingID`)
    REFERENCES `AirBnB_Project`.`Booking` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_GuestArrival_Guest1`
    FOREIGN KEY (`GuestID`)
    REFERENCES `AirBnB_Project`.`Guest` (`GuestID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_GuestArrival_Host1`
    FOREIGN KEY (`HostID`)
    REFERENCES `AirBnB_Project`.`Host` (`HostID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Admins` (
  `AdminID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `Username` VARCHAR(70) NOT NULL,
  `Password` VARCHAR(80) NOT NULL,
  `Role` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`AdminID`),
  INDEX `fk_Admins_User1_idx` (`UserID` ASC) VISIBLE,
  UNIQUE INDEX `Username_UNIQUE` (`Username` ASC) VISIBLE,
  CONSTRAINT `fk_Admins_User1`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`PropertyAvailability`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`PropertyAvailability` (
  `AvailabilityID` INT NOT NULL AUTO_INCREMENT,
  `PropertyID` INT NOT NULL,
  `StartDate` DATE NOT NULL,
  `EndDate` DATE NOT NULL,
  `Status` VARCHAR(30) NOT NULL,
  INDEX `fk_table1_Property1_idx` (`PropertyID` ASC) VISIBLE,
  PRIMARY KEY (`AvailabilityID`),
  CONSTRAINT `fk_PropertyAvailability_Property1`
    FOREIGN KEY (`PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Languages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Languages` (
  `LanguageID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`LanguageID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Countries` (
  `CountryID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(270) NOT NULL,
  `Country_Code` INT NOT NULL,
  PRIMARY KEY (`CountryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`User_has_Countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`User_has_Countries` (
  `UserID` INT NOT NULL,
  `CountryID` INT NOT NULL,
  PRIMARY KEY (`UserID`, `CountryID`),
  INDEX `fk_User_has_UserCountries_UserCountries1_idx` (`CountryID` ASC) VISIBLE,
  INDEX `fk_User_has_UserCountries_User1_idx` (`UserID` ASC) VISIBLE,
  CONSTRAINT `fk_User_has_UserCountries_User1`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_User_has_UserCountries_UserCountries1`
    FOREIGN KEY (`CountryID`)
    REFERENCES `AirBnB_Project`.`Countries` (`CountryID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`User_has_Languages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`User_has_Languages` (
  `User_UserID` INT NOT NULL,
  `Languages_LanguageID` INT NOT NULL,
  PRIMARY KEY (`User_UserID`, `Languages_LanguageID`),
  INDEX `fk_User_has_Languages_Languages1_idx` (`Languages_LanguageID` ASC) VISIBLE,
  INDEX `fk_User_has_Languages_User1_idx` (`User_UserID` ASC) VISIBLE,
  CONSTRAINT `fk_User_has_Languages_User1`
    FOREIGN KEY (`User_UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Languages_Languages1`
    FOREIGN KEY (`Languages_LanguageID`)
    REFERENCES `AirBnB_Project`.`Languages` (`LanguageID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Notifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Notifications` (
  `NotificationID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `Content` TEXT NOT NULL,
  `Time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`NotificationID`),
  INDEX `fk_Notifications_User1_idx` (`UserID` ASC) VISIBLE,
  CONSTRAINT `fk_Notifications_User1`
    FOREIGN KEY (`UserID`)
    REFERENCES `AirBnB_Project`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`HostingRule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`HostingRule` (
  `RuleID` INT NOT NULL,
  `Name` VARCHAR(200) NOT NULL,
  `Description` TEXT NOT NULL,
  PRIMARY KEY (`RuleID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirBnB_Project`.`Property_has_HostingRule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB_Project`.`Property_has_HostingRule` (
  `Property_PropertyID` INT NOT NULL,
  `HostingRule_RuleID` INT NOT NULL,
  PRIMARY KEY (`Property_PropertyID`, `HostingRule_RuleID`),
  INDEX `fk_Property_has_HostingRule_HostingRule1_idx` (`HostingRule_RuleID` ASC) VISIBLE,
  INDEX `fk_Property_has_HostingRule_Property1_idx` (`Property_PropertyID` ASC) VISIBLE,
  CONSTRAINT `fk_Property_has_HostingRule_Property1`
    FOREIGN KEY (`Property_PropertyID`)
    REFERENCES `AirBnB_Project`.`Property` (`PropertyID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Property_has_HostingRule_HostingRule1`
    FOREIGN KEY (`HostingRule_RuleID`)
    REFERENCES `AirBnB_Project`.`HostingRule` (`RuleID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `AirBnB_Project`;

DELIMITER $$
USE `AirBnB_Project`$$
CREATE TRIGGER CalculateExpectedIncome
AFTER INSERT ON Property
FOR EACH ROW
BEGIN
    DECLARE avgPrice DECIMAL(10,2);
    DECLARE nightlyRate DECIMAL(10,2);
    DECLARE monthlyRate DECIMAL(10,2);
    DECLARE yearlyRate DECIMAL(15,2);
    DECLARE totalBookings INT;
    DECLARE totalAvailableDays INT;
    DECLARE occupancyRate DECIMAL(5,2);

    -- Calculate average property price for the property's city
    SELECT AVG(Price) INTO avgPrice
    FROM Property
    WHERE CityID = NEW.CityID;

    -- Calculate nightly rate
    SET nightlyRate = avgPrice;

    -- Calculate monthly rate (assuming 30 days per month)
    SET monthlyRate = nightlyRate * 30;

    -- Calculate yearly rate (assuming 365 days per year)
    SET yearlyRate = nightlyRate * 365;

    -- Calculate total number of bookings for the property
    SELECT COUNT(*) INTO totalBookings
    FROM Booking
    WHERE PropertyID = NEW.PropertyID;

    -- Calculate total available days
    SET totalAvailableDays = DATEDIFF(CURDATE(), NEW.DateCreated) ;

    -- Calculate occupancy rate (bookings / available days)
    IF totalAvailableDays > 0 THEN
        SET occupancyRate = (totalBookings / totalAvailableDays) * 100;
    ELSE
        SET occupancyRate = 0; -- Avoid division by zero
    END IF;

    -- Insert calculated values into ExpectedIncome
    INSERT INTO ExpectedIncome (HostID, PropertyID, ExpectedNightlyRate, YearlyExpectedIncome, MonthlyExpectedIncome, OccupancyRate)
    VALUES (NEW.HostID, NEW.PropertyID, nightlyRate, yearlyRate, monthlyRate, occupancyRate);
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER UpdatePropertyCount
AFTER INSERT ON Property
FOR EACH ROW
BEGIN
  -- Update Property_Count for the host
  UPDATE Host
  SET Property_Count = (SELECT COUNT(*) FROM Property WHERE HostID = NEW.HostID)
  WHERE HostID = NEW.HostID;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER CalculateTotalPriceAndCommissions BEFORE INSERT ON AirBnB_Project.Booking
FOR EACH ROW
BEGIN
    DECLARE total_nights INT;
    DECLARE property_price DECIMAL(10, 2);

    -- Calculate the total number of nights for the booking
    SET total_nights = DATEDIFF(NEW.`Check_out_Date`, NEW.`Check_in_Date`);

    -- Retrieve the price of the property for this booking
    SELECT `Price` INTO property_price
    FROM AirBnB_Project.Property
    WHERE `PropertyID` = NEW.`PropertyID`;

    -- Calculate the Total_Price (total nights * property price)
    SET NEW.`Total_Price` = property_price * total_nights;

    -- Calculate the Host Commission (3% of Total_Price)
    SET NEW.`Host_Commission` = NEW.Total_Price * 0.03;

    -- Calculate the Guest Commission (7% of Total_Price)
    SET NEW.`Guest_Commission` = NEW.Total_Price * 0.07;

    -- Calculate the host Income (Total_Price - Host Commission)
    SET NEW.`Host_Income` = NEW.Total_Price - NEW.Host_Commission;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER OccupancyRate
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
    DECLARE totalBookings INT;
    DECLARE totalAvailableDays INT;
    DECLARE occupancyRate DECIMAL(5,2);

    -- Calculate total number of bookings for the property
    SELECT COUNT(*) INTO totalBookings
    FROM Booking
    WHERE PropertyID = NEW.PropertyID;

    -- Calculate total available days
    SET totalAvailableDays = DATEDIFF(CURDATE(), (SELECT DateCreated FROM Property WHERE PropertyID = NEW.PropertyID)) + 1;

    -- Calculate occupancy rate (bookings / available days)
    IF totalAvailableDays > 0 THEN
        SET occupancyRate = (totalBookings / totalAvailableDays) * 100;
    ELSE
        SET occupancyRate = 0; -- Avoid division by zero
    END IF;

    -- Update the ExpectedIncome table with the new occupancy rate
    UPDATE ExpectedIncome
    SET OccupancyRate = occupancyRate
    WHERE PropertyID = NEW.PropertyID;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER UpdateBookingCount
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
  -- Update Booking_Count for the guest
  UPDATE Guest
  SET Booking_Count = (SELECT COUNT(*) FROM Booking WHERE GuestID = NEW.GuestID)
  WHERE GuestID = NEW.GuestID;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER PropertyAvailability
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
  INSERT INTO PropertyAvailability (PropertyID, StartDate, EndDate, Status)
  VALUES (NEW.PropertyID, NEW.Check_in_Date, NEW.Check_out_Date, 'Booked');
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER CalculateTotalAmount BEFORE INSERT ON AirBnB_Project.PaymentTransaction
FOR EACH ROW
BEGIN
  -- Set the Amount to the total_price from Booking
  SET NEW.Amount = (
    SELECT total_price
    FROM Booking
    WHERE BookingID = NEW.BookingID
  );
  
  -- Calculate the total amount (Amount + Guest Commission)
  SET NEW.Amount = NEW.Amount + (
    SELECT Guest_Commission
    FROM Booking
    WHERE BookingID = NEW.BookingID
  );
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER SetStatus BEFORE INSERT ON AirBnB_Project.PaymentTransaction
FOR EACH ROW
BEGIN
  -- Check if the payment procedure was successful,it should be linked to the payment platform so it give the status
  IF NEW.PaymentProcedure = 'Successful' THEN
    SET NEW.PaymentStatus = 'Paid';
  ELSE
    SET NEW.PaymentStatus = 'Failed';
  END IF;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER UpdateBookingStatusOnPayment AFTER INSERT ON AirBnB_Project.PaymentTransaction
FOR EACH ROW
BEGIN
  -- Check if the payment was successful
  IF NEW.PaymentStatus = 'Paid' THEN
    -- Update the Booking status to 'Booked' when a new payment is marked as 'Paid'
    UPDATE AirBnB_Project.Booking
    SET BookingStatus = 'Booked'
    WHERE BookingID = NEW.BookingID;
  ELSE
    -- Update the Booking status to 'Failed' when a new payment is marked as 'Failed'
    UPDATE AirBnB_Project.Booking
    SET BookingStatus = 'Failed'
    WHERE BookingID = NEW.BookingID;
  END IF;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER UpdatePropertyAverageRating
BEFORE INSERT ON Review
FOR EACH ROW
BEGIN
    -- Calculate the new average rating
    DECLARE newAverageRating DECIMAL(3, 2);

    SELECT IFNULL(AVG(Rating), 0) INTO newAverageRating
    FROM Review
    WHERE PropertyID = NEW.PropertyID;

    -- Update the Property entity with the new average rating and rating count
    UPDATE Property
    SET Rating = newAverageRating
    WHERE PropertyID = NEW.PropertyID;
END;$$

USE `AirBnB_Project`$$
CREATE TRIGGER UpdateUserAverageRating BEFORE INSERT ON UserRating
FOR EACH ROW
BEGIN
    -- Calculate the new average rating
    DECLARE newAverageRating DECIMAL(3, 2);

    SELECT IFNULL(AVG(Rating), 0) INTO newAverageRating
    FROM UserRating
    WHERE RatedUserID = NEW.RatedUserID;

    -- Update the User entity with the new average rating and rating count
    UPDATE User
    SET Rating = newAverageRating
    WHERE UserID = NEW.RatedUserID;
END;$$


DELIMITER ;


		-- EVENTS--
use AirBnB_Project;

DELIMITER $$
SET GLOBAL event_scheduler = ON;

CREATE EVENT automate_host_payments
ON SCHEDULE EVERY 1 SECOND
DO
BEGIN
    DECLARE host_income DECIMAL(10, 2);
    DECLARE cur_time TIMESTAMP;

    -- Get the current time
    SET cur_time = NOW();

    -- Find GuestArrival records that are 24 hours or more old and haven't been processed
    INSERT INTO PayoutToHost (HostID, BankName, AccountHolderName, AccountNumber, RoutingNumber, Amount)
    SELECT 
        G.HostID,
        HBI.BankName,
        HBI.AccountHolderName,
        HBI.AccountNumber,
        HBI.RoutingNumber,
        B.host_income
    FROM GuestArrival G
    INNER JOIN Booking B ON G.BookingID = B.BookingID
    INNER JOIN HostBankingInfo HBI ON G.HostID = HBI.HostID
    WHERE TIMESTAMPDIFF(HOUR, G.ArrivalTime, cur_time) >= 24
    AND B.ProcessedFlag = 'Unprocessed'
	AND B.BookingStatus = 'Booked';

    -- Update the flag to mark records as processed
    UPDATE Booking SET ProcessedFlag = 'Processed' WHERE ProcessedFlag = 'Unprocessed' AND BookingStatus = 'Booked';

END $$

CREATE EVENT AutoInsertReservations
ON SCHEDULE EVERY 1 SECOND
STARTS CURRENT_TIMESTAMP
DO
BEGIN
  -- Insert reservations from booking table where bookingstatus is 'Booked'
  INSERT INTO reservation (GuestID, BookingID, PropertyID)
  SELECT B.GuestID, B.BookingID, B.PropertyID
  FROM Booking AS B
  WHERE B.BookingStatus = 'Booked';
END$$

CREATE EVENT UpdatePhoneNumbers
ON SCHEDULE EVERY 1 SECOND
DO
BEGIN
    -- Add the plus sign to the phone numbers in User table
    UPDATE User
    JOIN User_has_Countries UHC ON User.UserID = UHC.UserID
    JOIN Countries C ON UHC.CountryID = C.CountryID
    SET User.Phone_Number = CONCAT('+', C.Country_Code, User.Phone_Number);
END$$

DELIMITER ;
ALTER EVENT automate_host_payments ON COMPLETION NOT PRESERVE ENABLE;

show events;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
