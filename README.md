# MEL
MEL app for M.C.

Be sure to edit database (.MDF) file path in web.config for your setup:
  <connectionStrings>
    <add name="constr" connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\colbu\Documents\AjaxSamples.mdf;Integrated Security=True;Connect Timeout=30" providerName="System.Data.SqlClient"/>
  </connectionStrings>



To create table:
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

