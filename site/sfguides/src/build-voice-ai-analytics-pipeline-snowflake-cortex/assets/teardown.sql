-- ============================================================================
-- Voice Order Processing with Snowflake AI - Teardown Script
-- Cleans up all resources created by setup + optional guide steps.
-- Requires ACCOUNTADMIN role.
-- ============================================================================

USE ROLE ACCOUNTADMIN;

-- Optional objects created during the guide (drop before database)
DROP AGENT IF EXISTS TASTY_AUDIO_DB.ORDERS.TASTY_ORDERS_AGENT;
DROP SEMANTIC VIEW IF EXISTS TASTY_AUDIO_DB.ORDERS.CUSTOMER_ORDERS_SEMANTIC;

-- Core setup objects
DROP DATABASE IF EXISTS TASTY_AUDIO_DB;
DROP WAREHOUSE IF EXISTS TASTY_AUDIO_WH;

-- External access objects
DROP INTEGRATION IF EXISTS GOOGLE_TTS_INTEGRATION;
DROP NETWORK RULE IF EXISTS GOOGLE_TTS_RULE;

-- Optional extra object referenced in some versions of the guide
DROP DATABASE IF EXISTS POLICY_DB;

SELECT 'Teardown complete.' AS STATUS;
