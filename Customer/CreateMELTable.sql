CREATE TABLE [dbo].[MELPeople] (
    [MEL_Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [firstName]              VARCHAR (100) NOT NULL,
    [middleName]             VARCHAR (100) NOT NULL,
    [lastName]               VARCHAR (100) NOT NULL,
    [passportNumber]         VARCHAR (20)  NOT NULL,
    [passportExpirationDate] VARCHAR (10)  NOT NULL,
    [phoneNumber]            VARCHAR (20)  NOT NULL,
    [address]                VARCHAR (100) NOT NULL,
    [landlordName]           VARCHAR (100) NOT NULL,
    [landlordPhoneNumber]    VARCHAR (20)  NOT NULL,
    CONSTRAINT [PK_MELPeople] PRIMARY KEY CLUSTERED ([MEL_Id] ASC)
);

