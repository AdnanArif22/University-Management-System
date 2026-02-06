--------------------------------------------------------
--  File created - Thursday-February-05-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE" 
   (	"ATTENDANCE_ID" NUMBER, 
	"ENROLLMENT_ID" NUMBER, 
	"ATTENDANCE_PERCENTAGE" NUMBER(5,2) DEFAULT null, 
	"STATUS" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table CGPA_RECORD
--------------------------------------------------------

  CREATE TABLE "CGPA_RECORD" 
   (	"RECORD_ID" NUMBER, 
	"ENROLLMENT_ID" NUMBER, 
	"GRADE" VARCHAR2(5), 
	"GPA" NUMBER(3,2), 
	"CGPA_VALUE" NUMBER(5,2), 
	"SEMESTER_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"COURSE_ID" NUMBER, 
	"COURSE_CODE" VARCHAR2(50), 
	"COURSE_NAME" VARCHAR2(200), 
	"CREDIT_HOURS" NUMBER(3,1), 
	"PROGRAM_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table COURSE_ASSIGNED
--------------------------------------------------------

  CREATE TABLE "COURSE_ASSIGNED" 
   (	"ID" NUMBER, 
	"COURSE_ID" NUMBER, 
	"FACULTY_ID" NUMBER, 
	"SEMESTER_ID" NUMBER, 
	"ACAD_YEAR" VARCHAR2(20), 
	"SECTION" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEPT_ID" NUMBER, 
	"DEPT_NAME" VARCHAR2(100), 
	"BUILDING" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "ENROLLMENT" 
   (	"ENROLLMENT_ID" NUMBER, 
	"OFFERING_ID" NUMBER, 
	"SEMESTER_ID" NUMBER, 
	"ENROLLMENT_DATE" DATE DEFAULT SYSDATE, 
	"SR_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table EXAM
--------------------------------------------------------

  CREATE TABLE "EXAM" 
   (	"EXAM_ID" NUMBER, 
	"OFFERING_ID" NUMBER, 
	"EXAM_TYPE" VARCHAR2(20), 
	"TOTAL_MARKS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table EXAM_RESULT
--------------------------------------------------------

  CREATE TABLE "EXAM_RESULT" 
   (	"RESULT_ID" NUMBER, 
	"EXAM_ID" NUMBER, 
	"MARKS" NUMBER(6,2), 
	"SR_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table FACULTY
--------------------------------------------------------

  CREATE TABLE "FACULTY" 
   (	"FACULTY_ID" NUMBER, 
	"FULL_NAME" VARCHAR2(150), 
	"DESIGNATION" VARCHAR2(100), 
	"EMAIL" VARCHAR2(150), 
	"PHONE" VARCHAR2(30), 
	"DEPT_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table FEE
--------------------------------------------------------

  CREATE TABLE "FEE" 
   (	"FEE_ID" NUMBER, 
	"FEE_TYPE" VARCHAR2(50), 
	"AMOUNT" NUMBER(12,2), 
	"DUE_DATE" DATE, 
	"STATUS" VARCHAR2(20), 
	"SR_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table INTER_MARKS
--------------------------------------------------------

  CREATE TABLE "INTER_MARKS" 
   (	"OBTAINED_MARKS" NUMBER, 
	"SR_NO" NUMBER, 
	"TOTAL_MARKS" NUMBER DEFAULT 1200, 
	"QUALIFICATION" VARCHAR2(20) DEFAULT 'intermediate'
   ) ;
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PAYMENT" 
   (	"PAYMENT_ID" NUMBER, 
	"FEE_ID" NUMBER, 
	"PAYMENT_DATE" DATE, 
	"AMOUNT_PAID" NUMBER(12,2), 
	"METHOD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PROGRAM
--------------------------------------------------------

  CREATE TABLE "PROGRAM" 
   (	"PROGRAM_ID" NUMBER, 
	"PROGRAM_NAME" VARCHAR2(150), 
	"DURATION_SEMESTERS" NUMBER(3,0), 
	"DEPT_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SECTION
--------------------------------------------------------

  CREATE TABLE "SECTION" 
   (	"SECTION_ID" NUMBER, 
	"SECTION_NAME" VARCHAR2(50), 
	"PROGRAM_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SEMESTER
--------------------------------------------------------

  CREATE TABLE "SEMESTER" 
   (	"SEMESTER_ID" NUMBER, 
	"NAME" VARCHAR2(50), 
	"START_DATE" DATE, 
	"END_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDENT_ROLLNO" VARCHAR2(30), 
	"FULL_NAME" VARCHAR2(150), 
	"FATHER_NAME" VARCHAR2(150), 
	"GENDER" VARCHAR2(20), 
	"EMAIL" VARCHAR2(150), 
	"CITY" VARCHAR2(50), 
	"DEPT_ID" NUMBER, 
	"SR_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USER_ID" NUMBER, 
	"USERNAME" VARCHAR2(100), 
	"PASSWORD_HASH" VARCHAR2(200), 
	"ROLE" VARCHAR2(50), 
	"STATUS" VARCHAR2(20), 
	"FACULTY_ID" NUMBER(*,0), 
	"SR_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Index SYS_C007205
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007205" ON "ATTENDANCE" ("ATTENDANCE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007202
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007202" ON "CGPA_RECORD" ("RECORD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007189
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007189" ON "COURSE" ("COURSE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_COURSE_PROGRAM
--------------------------------------------------------

  CREATE INDEX "IDX_COURSE_PROGRAM" ON "COURSE" ("PROGRAM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007194
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007194" ON "COURSE_ASSIGNED" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007175
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007175" ON "DEPARTMENT" ("DEPT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007176
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007176" ON "DEPARTMENT" ("DEPT_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007198
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007198" ON "ENROLLMENT" ("ENROLLMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007218
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007218" ON "EXAM" ("EXAM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007220
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007220" ON "EXAM_RESULT" ("RESULT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007192
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007192" ON "FACULTY" ("FACULTY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007207
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007207" ON "FEE" ("FEE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INTER_MARKS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INTER_MARKS" ON "INTER_MARKS" ("SR_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007209
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007209" ON "PAYMENT" ("PAYMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007178
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007178" ON "PROGRAM" ("PROGRAM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROGRAM_DEPT
--------------------------------------------------------

  CREATE INDEX "IDX_PROGRAM_DEPT" ON "PROGRAM" ("DEPT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007215
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007215" ON "SECTION" ("SECTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007180
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007180" ON "SEMESTER" ("SEMESTER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STUDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STUDENT" ON "STUDENT" ("SR_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007186
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007186" ON "STUDENT" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007213
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007213" ON "USERS" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007214
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007214" ON "USERS" ("USERNAME") 
  ;
--------------------------------------------------------
--  Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD PRIMARY KEY ("ATTENDANCE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CGPA_RECORD
--------------------------------------------------------

  ALTER TABLE "CGPA_RECORD" ADD PRIMARY KEY ("RECORD_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" ADD PRIMARY KEY ("COURSE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table COURSE_ASSIGNED
--------------------------------------------------------

  ALTER TABLE "COURSE_ASSIGNED" ADD PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT" ADD PRIMARY KEY ("DEPT_ID") ENABLE;
  ALTER TABLE "DEPARTMENT" ADD UNIQUE ("DEPT_NAME") ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD PRIMARY KEY ("ENROLLMENT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAM
--------------------------------------------------------

  ALTER TABLE "EXAM" ADD CHECK (exam_type IN ('Mid','Final','Lab','Quiz')) ENABLE;
  ALTER TABLE "EXAM" ADD PRIMARY KEY ("EXAM_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAM_RESULT
--------------------------------------------------------

  ALTER TABLE "EXAM_RESULT" ADD PRIMARY KEY ("RESULT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FACULTY
--------------------------------------------------------

  ALTER TABLE "FACULTY" MODIFY ("FULL_NAME" NOT NULL ENABLE);
  ALTER TABLE "FACULTY" ADD PRIMARY KEY ("FACULTY_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FEE
--------------------------------------------------------

  ALTER TABLE "FEE" ADD PRIMARY KEY ("FEE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table INTER_MARKS
--------------------------------------------------------

  ALTER TABLE "INTER_MARKS" ADD CONSTRAINT "PK_INTER_MARKS" PRIMARY KEY ("SR_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD PRIMARY KEY ("PAYMENT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PROGRAM
--------------------------------------------------------

  ALTER TABLE "PROGRAM" MODIFY ("PROGRAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROGRAM" ADD PRIMARY KEY ("PROGRAM_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" ADD PRIMARY KEY ("SECTION_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SEMESTER
--------------------------------------------------------

  ALTER TABLE "SEMESTER" ADD PRIMARY KEY ("SEMESTER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CHECK (gender IN ('Male','Female','Others')) DISABLE;
  ALTER TABLE "STUDENT" ADD CHECK (email LIKE '%@%') ENABLE;
  ALTER TABLE "STUDENT" ADD CONSTRAINT "PK_STUDENT" PRIMARY KEY ("SR_NO") ENABLE;
  ALTER TABLE "STUDENT" ADD UNIQUE ("EMAIL") ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "USERS" ADD UNIQUE ("USERNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD CONSTRAINT "FK_ATT_ENR" FOREIGN KEY ("ENROLLMENT_ID")
	  REFERENCES "ENROLLMENT" ("ENROLLMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CGPA_RECORD
--------------------------------------------------------

  ALTER TABLE "CGPA_RECORD" ADD CONSTRAINT "FK_CGPA_ENR" FOREIGN KEY ("ENROLLMENT_ID")
	  REFERENCES "ENROLLMENT" ("ENROLLMENT_ID") ENABLE;
  ALTER TABLE "CGPA_RECORD" ADD CONSTRAINT "FK_CGPA_SEM" FOREIGN KEY ("SEMESTER_ID")
	  REFERENCES "SEMESTER" ("SEMESTER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" ADD CONSTRAINT "FK_COURSE_PROGRAM" FOREIGN KEY ("PROGRAM_ID")
	  REFERENCES "PROGRAM" ("PROGRAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COURSE_ASSIGNED
--------------------------------------------------------

  ALTER TABLE "COURSE_ASSIGNED" ADD CONSTRAINT "FK_OFFER_COURSE" FOREIGN KEY ("COURSE_ID")
	  REFERENCES "COURSE" ("COURSE_ID") ENABLE;
  ALTER TABLE "COURSE_ASSIGNED" ADD CONSTRAINT "FK_OFFER_FACULTY" FOREIGN KEY ("FACULTY_ID")
	  REFERENCES "FACULTY" ("FACULTY_ID") ENABLE;
  ALTER TABLE "COURSE_ASSIGNED" ADD CONSTRAINT "FK_OFFER_SEM" FOREIGN KEY ("SEMESTER_ID")
	  REFERENCES "SEMESTER" ("SEMESTER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "FK_ENR_OFFER" FOREIGN KEY ("OFFERING_ID")
	  REFERENCES "COURSE_ASSIGNED" ("ID") ENABLE;
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "FK_ENR_SEM" FOREIGN KEY ("SEMESTER_ID")
	  REFERENCES "SEMESTER" ("SEMESTER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAM
--------------------------------------------------------

  ALTER TABLE "EXAM" ADD CONSTRAINT "FK_EXAM_OFFER" FOREIGN KEY ("OFFERING_ID")
	  REFERENCES "COURSE_ASSIGNED" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAM_RESULT
--------------------------------------------------------

  ALTER TABLE "EXAM_RESULT" ADD CONSTRAINT "FK_RES_EXAM" FOREIGN KEY ("EXAM_ID")
	  REFERENCES "EXAM" ("EXAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACULTY
--------------------------------------------------------

  ALTER TABLE "FACULTY" ADD CONSTRAINT "FK_FACULTY_DEPT" FOREIGN KEY ("DEPT_ID")
	  REFERENCES "DEPARTMENT" ("DEPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_PAY_FEE" FOREIGN KEY ("FEE_ID")
	  REFERENCES "FEE" ("FEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROGRAM
--------------------------------------------------------

  ALTER TABLE "PROGRAM" ADD CONSTRAINT "FK_PROGRAM_DEPT" FOREIGN KEY ("DEPT_ID")
	  REFERENCES "DEPARTMENT" ("DEPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "SECTION" ADD CONSTRAINT "FK_SECTION_PROGRAM" FOREIGN KEY ("PROGRAM_ID")
	  REFERENCES "PROGRAM" ("PROGRAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CONSTRAINT "FK_STUDENT_DEPT" FOREIGN KEY ("DEPT_ID")
	  REFERENCES "DEPARTMENT" ("DEPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD FOREIGN KEY ("FACULTY_ID")
	  REFERENCES "FACULTY" ("FACULTY_ID") ENABLE;
  ALTER TABLE "USERS" ADD FOREIGN KEY ("SR_NO")
	  REFERENCES "STUDENT" ("SR_NO") ENABLE;
