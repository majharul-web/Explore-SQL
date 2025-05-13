-- Function and store-procedure are same. The main difference is
--1. function returns a value, but store-procedure does not.
--2. function not support transaction but store-procedure support transaction.

-- ## generally function and store-procedure are used to reduce the code and used in backend-code base.

-- ##CREATE store-procedure
CREATE PROCEDURE declarative_unpaid_account()
LANGUAGE SQL
AS $$
    SELECT * FROM account WHERE balance < 0;
$$;

-- ##CALL store-procedure
CALL declarative_unpaid_account();

-- SELECT * FROM employee;

-- ##CREATE FUNCTION
CREATE FUNCTION account_type_count(account_type text) RETURNS INTEGER
LANGUAGE PLPGSQL
AS $$
    DECLARE
        account_count int;
    BEGIN
        SELECT COUNT(*) INTO total FROM account WHERE type = account_type;
        RETURN account_count;
    END;
$$;

EXECUTE FUNCTION account_type_count();