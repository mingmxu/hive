--Create table replication metrics
CREATE TABLE "REPLICATION_METRICS" (
  "RM_SCHEDULED_EXECUTION_ID" number PRIMARY KEY,
  "RM_POLICY" varchar2(256) NOT NULL,
  "RM_DUMP_EXECUTION_ID" number NOT NULL,
  "RM_METADATA" varchar2(4000),
  "RM_PROGRESS" varchar2(4000)
);

--Create indexes for the replication metrics table
CREATE INDEX POLICY_IDX ON "REPLICATION_METRICS" ("RM_POLICY");
CREATE INDEX DUMP_IDX ON "REPLICATION_METRICS" ("RM_DUMP_EXECUTION_ID");