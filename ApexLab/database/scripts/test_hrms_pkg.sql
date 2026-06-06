SET SERVEROUTPUT ON

PROMPT Compiling HRMS package specification
@@../packages/hrms_pkg.pks

PROMPT Compiling HRMS package body
@@../packages/hrms_pkg.pkb

DECLARE
    l_errorCode     NUMBER;
    l_errorMessage  VARCHAR2(1000);
    l_response      VARCHAR2(200);
    l_lookupTypeId  NUMBER;
    l_lookupValueId NUMBER;

    PROCEDURE assertSuccess(apiName IN VARCHAR2) AS
    BEGIN
        IF l_errorCode <> 200 THEN
            RAISE_APPLICATION_ERROR(
                -20999,
                'Test failed in ' || apiName || ': ' || l_errorMessage
            );
        END IF;
    END assertSuccess;
BEGIN
    DELETE FROM HRMS_LOOKUP_VALUES
     WHERE LOOKUP_TYPE_ID IN (
               SELECT LOOKUP_TYPE_ID
                 FROM HRMS_LOOKUP_TYPES
                WHERE LOOKUP_TYPE_CODE = 'TEST_STATUS'
           );

    DELETE FROM HRMS_LOOKUP_TYPES
     WHERE LOOKUP_TYPE_CODE = 'TEST_STATUS';

    COMMIT;

    HRMS_PKG.createLookupType(
        lookupTypeCode  => 'TEST_STATUS',
        lookupTypeName  => 'Test Status',
        description     => 'Lookup type test data',
        displaySequence => 10,
        isActive        => 'Y',
        userName        => 'TEST_USER',
        errorCode       => l_errorCode,
        errorMessage    => l_errorMessage,
        response        => l_response
    );

    assertSuccess('createLookupType');
    l_lookupTypeId := TO_NUMBER(l_response);

    HRMS_PKG.createLookupValue(
        lookupTypeId    => l_lookupTypeId,
        lookupValueCode => 'OPEN',
        lookupValueName => 'Open',
        description     => 'Open status',
        displaySequence => 10,
        isActive        => 'Y',
        startDate       => NULL,
        endDate         => NULL,
        userName        => 'TEST_USER',
        errorCode       => l_errorCode,
        errorMessage    => l_errorMessage,
        response        => l_response
    );

    assertSuccess('createLookupValue');
    l_lookupValueId := TO_NUMBER(l_response);

    HRMS_PKG.getLookupValueName(
        lookupTypeCode  => 'test_status',
        lookupValueCode => 'open',
        errorCode       => l_errorCode,
        errorMessage    => l_errorMessage,
        response        => l_response
    );

    assertSuccess('getLookupValueName');

    IF l_response <> 'Open' THEN
        RAISE_APPLICATION_ERROR(-20999, 'Test failed: getLookupValueName returned wrong value.');
    END IF;

    HRMS_PKG.deleteLookupValue(
        lookupValueId => l_lookupValueId,
        userName      => 'TEST_USER',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );

    assertSuccess('deleteLookupValue');

    HRMS_PKG.deleteLookupType(
        lookupTypeId  => l_lookupTypeId,
        userName      => 'TEST_USER',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );

    assertSuccess('deleteLookupType');
    DBMS_OUTPUT.PUT_LINE('HRMS_PKG tests passed.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
