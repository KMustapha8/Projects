CREATE TABLE CreditCard (
    CreditCardNumber VARCHAR(16) PRIMARY KEY,
    CreditCardOwnerName VARCHAR(100) NOT NULL,

    CreditCardProcessingMerchantServiceCompanyCode TINYINT NOT NULL,
    CreditCardNetworkCompanyCode TINYINT NOT NULL,
    CreditCardIssuingBankCode TINYINT NOT NULL,
    CreditCardCorporateMerchantBankCode TINYINT NOT NULL,

    ExpDate DATE NOT NULL,
    AddressLine1 VARCHAR(100) NOT NULL,
    AddressLine2 VARCHAR(100),
    City VARCHAR(100) NOT NULL,
    StateID TINYINT NOT NULL,
    CountryID TINYINT NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,

    CreditCardLimit DECIMAL(8, 2) NOT NULL,
    CreditCardAvailableCredit DECIMAL(8, 2) NOT NULL,
    ActivationStatus BOOLEAN NOT NULL,

    FOREIGN KEY (CreditCardProcessingMerchantServiceCompanyCode)
        REFERENCES CreditCardProcessingMerchantServiceCompany(CreditCardProcessingMerchantServiceCompanyCode)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (CreditCardNetworkCompanyCode)
        REFERENCES CreditCardNetworkCompany(CreditCardNetworkCompanyCode)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (CreditCardIssuingBankCode)
        REFERENCES CreditCardIssuingBank(CreditCardIssuingBankCode)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (CreditCardCorporateMerchantBankCode)
        REFERENCES CreditCardCorporateMerchantBank(CreditCardCorporateMerchantBankCode)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (StateID)
        REFERENCES USState(StateID)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (CountryID)
        REFERENCES Country(CountryID)
        ON DELETE CASCADE ON UPDATE CASCADE
);