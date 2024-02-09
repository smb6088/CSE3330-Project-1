DROP TABLE IF EXISTS BOOKED;
CREATE TABLE BOOKED(
			Passenger_ssn  	CHAR(9)		  	NOT NULL,
			Train_Number  	INT  			NOT NULL,
			Ticket_Type   	VARCHAR(8)  	NOT NULL,
			Status   		VARCHAR(7)  	NOT NULL,
		FOREIGN KEY (Passenger_ssn) REFERENCES PASSENGER(SSN),
		FOREIGN KEY (Train_Number) REFERENCES TRAIN(Train_Number));


DROP TABLE IF EXISTS TRAIN_STATUS;
CREATE TABLE TRAIN_STATUS(
			Train_Date  		   DATE,
			Train_Name  		   varchar(20),
			PremiumSeatsAvailable  INT,
			GenSeatsAvailable  	   INT,
			PremiumSeatsOccupied   INT,
			GenSeatsOccupied       INT,
		FOREIGN KEY (Train_Name) REFERENCES TRAIN(Train_Name));

DROP TABLE IF EXISTS TRAIN;		
Create table TRAIN(
			Train_Number 	integer 		not null,
			Train_Name 		text 			not null, 
			Premium_Fair 	integer 		not null, 
			General_Fair 	integer 		not null, 
			Source_Station 	text 			not null, 
			Destination 	text, 
			Available_on 	text 			not null,
		primary key(Train_Name,Available_on));

DROP TABLE IF EXISTS PASSENGER;
CREATE TABLE PASSENGER(
			first_name		VARCHAR(40)		NOT NULL,
			last_name		VARCHAR(40)		NOT NULL,
			address			TEXT,			
			city			VARCHAR(40),		
			county			VARCHAR(40),	
			phone2			CHAR(12),
			SSN				CHAR(9)			NOT NULL,
			bdate			DATE			NOT NULL,
		PRIMARY KEY(SSN));