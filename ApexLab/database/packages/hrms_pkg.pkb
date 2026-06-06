CREATE OR REPLACE PACKAGE BODY HRMS_PKG AS
    FUNCTION normalizeCode(codeValue IN VARCHAR2) RETURN VARCHAR2 AS
    BEGIN
        RETURN UPPER(TRIM(codeValue));
    END normalizeCode;

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
    ) AS
        l_lookupTypeId  HRMS_LOOKUP_TYPES.LOOKUP_TYPE_ID%TYPE;
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupTypeCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeCode not found in createLookupType API.';
            l_response := 'fail';
        ELSIF lookupTypeName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeName not found in createLookupType API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in createLookupType API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            l_lookupTypeId := HRMS_LOOKUP_TYPES_SEQ.NEXTVAL;

            INSERT INTO HRMS_LOOKUP_TYPES (
                LOOKUP_TYPE_ID,
                LOOKUP_TYPE_CODE,
                LOOKUP_TYPE_NAME,
                DESCRIPTION,
                DISPLAY_SEQUENCE,
                IS_ACTIVE,
                CREATED,
                CREATED_BY,
                UPDATED,
                UPDATED_BY
            ) VALUES (
                l_lookupTypeId,
                normalizeCode(lookupTypeCode),
                TRIM(lookupTypeName),
                description,
                NVL(displaySequence, 10),
                NVL(isActive, 'Y'),
                SYSDATE,
                userName,
                SYSDATE,
                userName
            );

            COMMIT;
            l_errorMessage := 'success';
            l_response := l_lookupTypeId;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from createLookupType API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END createLookupType;

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
    ) AS
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupTypeId IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeId not found in updateLookupType API.';
            l_response := 'fail';
        ELSIF lookupTypeCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeCode not found in updateLookupType API.';
            l_response := 'fail';
        ELSIF lookupTypeName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeName not found in updateLookupType API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in updateLookupType API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            UPDATE HRMS_LOOKUP_TYPES
               SET LOOKUP_TYPE_CODE = normalizeCode(lookupTypeCode),
                   LOOKUP_TYPE_NAME = TRIM(lookupTypeName),
                   DESCRIPTION = description,
                   DISPLAY_SEQUENCE = NVL(displaySequence, 10),
                   IS_ACTIVE = NVL(isActive, 'Y'),
                   UPDATED = SYSDATE,
                   UPDATED_BY = userName
             WHERE LOOKUP_TYPE_ID = lookupTypeId;

            IF SQL%ROWCOUNT = 0 THEN
                l_errorCode := 404;
                l_errorMessage := 'Error: lookupTypeId not found in updateLookupType API.';
                l_response := 'fail';
            ELSE
                COMMIT;
                l_errorMessage := 'success';
                l_response := NULL;
            END IF;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from updateLookupType API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END updateLookupType;

    PROCEDURE deleteLookupType(
        lookupTypeId  IN  NUMBER,
        userName      IN  VARCHAR2,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupTypeId IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeId not found in deleteLookupType API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in deleteLookupType API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            DELETE FROM HRMS_LOOKUP_TYPES
             WHERE LOOKUP_TYPE_ID = lookupTypeId;

            IF SQL%ROWCOUNT = 0 THEN
                l_errorCode := 404;
                l_errorMessage := 'Error: lookupTypeId not found in deleteLookupType API.';
                l_response := 'fail';
            ELSE
                COMMIT;
                l_errorMessage := 'success';
                l_response := NULL;
            END IF;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from deleteLookupType API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END deleteLookupType;

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
    ) AS
        l_lookupValueId HRMS_LOOKUP_VALUES.LOOKUP_VALUE_ID%TYPE;
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupTypeId IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeId not found in createLookupValue API.';
            l_response := 'fail';
        ELSIF lookupValueCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueCode not found in createLookupValue API.';
            l_response := 'fail';
        ELSIF lookupValueName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueName not found in createLookupValue API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in createLookupValue API.';
            l_response := 'fail';
        ELSIF endDate IS NOT NULL AND startDate IS NOT NULL AND endDate < startDate THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: endDate cannot be earlier than startDate in createLookupValue API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            l_lookupValueId := HRMS_LOOKUP_VALUES_SEQ.NEXTVAL;

            INSERT INTO HRMS_LOOKUP_VALUES (
                LOOKUP_VALUE_ID,
                LOOKUP_TYPE_ID,
                LOOKUP_VALUE_CODE,
                LOOKUP_VALUE_NAME,
                DESCRIPTION,
                DISPLAY_SEQUENCE,
                IS_ACTIVE,
                START_DATE,
                END_DATE,
                CREATED,
                CREATED_BY,
                UPDATED,
                UPDATED_BY
            ) VALUES (
                l_lookupValueId,
                lookupTypeId,
                normalizeCode(lookupValueCode),
                TRIM(lookupValueName),
                description,
                NVL(displaySequence, 10),
                NVL(isActive, 'Y'),
                startDate,
                endDate,
                SYSDATE,
                userName,
                SYSDATE,
                userName
            );

            COMMIT;
            l_errorMessage := 'success';
            l_response := l_lookupValueId;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from createLookupValue API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END createLookupValue;

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
    ) AS
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupValueId IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueId not found in updateLookupValue API.';
            l_response := 'fail';
        ELSIF lookupValueCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueCode not found in updateLookupValue API.';
            l_response := 'fail';
        ELSIF lookupValueName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueName not found in updateLookupValue API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in updateLookupValue API.';
            l_response := 'fail';
        ELSIF endDate IS NOT NULL AND startDate IS NOT NULL AND endDate < startDate THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: endDate cannot be earlier than startDate in updateLookupValue API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            UPDATE HRMS_LOOKUP_VALUES
               SET LOOKUP_VALUE_CODE = normalizeCode(lookupValueCode),
                   LOOKUP_VALUE_NAME = TRIM(lookupValueName),
                   DESCRIPTION = description,
                   DISPLAY_SEQUENCE = NVL(displaySequence, 10),
                   IS_ACTIVE = NVL(isActive, 'Y'),
                   START_DATE = startDate,
                   END_DATE = endDate,
                   UPDATED = SYSDATE,
                   UPDATED_BY = userName
             WHERE LOOKUP_VALUE_ID = lookupValueId;

            IF SQL%ROWCOUNT = 0 THEN
                l_errorCode := 404;
                l_errorMessage := 'Error: lookupValueId not found in updateLookupValue API.';
                l_response := 'fail';
            ELSE
                COMMIT;
                l_errorMessage := 'success';
                l_response := NULL;
            END IF;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from updateLookupValue API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END updateLookupValue;

    PROCEDURE deleteLookupValue(
        lookupValueId IN  NUMBER,
        userName      IN  VARCHAR2,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupValueId IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueId not found in deleteLookupValue API.';
            l_response := 'fail';
        ELSIF userName IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: userName not found in deleteLookupValue API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            DELETE FROM HRMS_LOOKUP_VALUES
             WHERE LOOKUP_VALUE_ID = lookupValueId;

            IF SQL%ROWCOUNT = 0 THEN
                l_errorCode := 404;
                l_errorMessage := 'Error: lookupValueId not found in deleteLookupValue API.';
                l_response := 'fail';
            ELSE
                COMMIT;
                l_errorMessage := 'success';
                l_response := NULL;
            END IF;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from deleteLookupValue API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END deleteLookupValue;

    PROCEDURE getLookupValueName(
        lookupTypeCode   IN  VARCHAR2,
        lookupValueCode  IN  VARCHAR2,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    ) AS
        l_errorCode     NUMBER(3) := 200;
        l_errorMessage  VARCHAR2(1000);
        l_response      VARCHAR2(200);
    BEGIN
        IF lookupTypeCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupTypeCode not found in getLookupValueName API.';
            l_response := 'fail';
        ELSIF lookupValueCode IS NULL THEN
            l_errorCode := 400;
            l_errorMessage := 'Error: lookupValueCode not found in getLookupValueName API.';
            l_response := 'fail';
        END IF;

        IF l_errorCode = 200 THEN
            BEGIN
                SELECT v.LOOKUP_VALUE_NAME
                  INTO l_response
                  FROM HRMS_LOOKUP_TYPES t,
                       HRMS_LOOKUP_VALUES v
                 WHERE t.LOOKUP_TYPE_ID = v.LOOKUP_TYPE_ID
                   AND t.LOOKUP_TYPE_CODE = normalizeCode(lookupTypeCode)
                   AND v.LOOKUP_VALUE_CODE = normalizeCode(lookupValueCode)
                   AND t.IS_ACTIVE = 'Y'
                   AND v.IS_ACTIVE = 'Y'
                   AND (v.START_DATE IS NULL OR v.START_DATE <= TRUNC(SYSDATE))
                   AND (v.END_DATE IS NULL OR v.END_DATE >= TRUNC(SYSDATE));

                l_errorMessage := 'success';
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    l_errorCode := 404;
                    l_errorMessage := 'Error: lookup value not found in getLookupValueName API.';
                    l_response := 'fail';
            END;
        END IF;

        errorCode := l_errorCode;
        errorMessage := l_errorMessage;
        response := l_response;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := 400;
            errorMessage := 'Error: an unhandaled exception from getLookupValueName API. ' || SUBSTR(SQLERRM, 1, 450);
            response := 'fail';
    END getLookupValueName;
END HRMS_PKG;
/

SHOW ERRORS PACKAGE BODY HRMS_PKG
