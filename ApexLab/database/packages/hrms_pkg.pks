CREATE OR REPLACE PACKAGE HRMS_PKG AS
    PROCEDURE createLookupType(
        lookupTypeCode   IN  VARCHAR2,
        lookupTypeName   IN  VARCHAR2,
        description      IN  VARCHAR2,
        displaySequence  IN  NUMBER,
        isActive         IN  VARCHAR2,
        userName         IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE updateLookupType(
        lookupTypeId     IN  NUMBER,
        lookupTypeCode   IN  VARCHAR2,
        lookupTypeName   IN  VARCHAR2,
        description      IN  VARCHAR2,
        displaySequence  IN  NUMBER,
        isActive         IN  VARCHAR2,
        userName         IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE deleteLookupType(
        lookupTypeId  IN  NUMBER,
        userName      IN  VARCHAR2,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createLookupValue(
        lookupTypeId     IN  NUMBER,
        lookupValueCode  IN  VARCHAR2,
        lookupValueName  IN  VARCHAR2,
        description      IN  VARCHAR2,
        displaySequence  IN  NUMBER,
        isActive         IN  VARCHAR2,
        startDate        IN  DATE,
        endDate          IN  DATE,
        userName         IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE updateLookupValue(
        lookupValueId    IN  NUMBER,
        lookupValueCode  IN  VARCHAR2,
        lookupValueName  IN  VARCHAR2,
        description      IN  VARCHAR2,
        displaySequence  IN  NUMBER,
        isActive         IN  VARCHAR2,
        startDate        IN  DATE,
        endDate          IN  DATE,
        userName         IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE deleteLookupValue(
        lookupValueId IN  NUMBER,
        userName      IN  VARCHAR2,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE getLookupValueName(
        lookupTypeCode   IN  VARCHAR2,
        lookupValueCode  IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );
END HRMS_PKG;
/

SHOW ERRORS PACKAGE HRMS_PKG
