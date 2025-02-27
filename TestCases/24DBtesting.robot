*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database  pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   niteshdb
${DBUser}   root
${DBPass}   root
${DBHost}   localhost
${DBPort}   3306


*** Test Cases ***

Create person table
    ${output}=  Execute SQL String  Create table person(id integer,first_name varchar(20),last_name varchar(20))
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Inserting Data in Person Table
##single record insertion
#    ${output}=  Execute SQL String  Insert into person values(101,"Nitesh","Kumar")

    #multiple records through sql script
     ${output}=  Execute SQL Script     ../TestData/mydb_person_insertData.sql
     Log To Console    ${output}
     Should Be Equal As Strings    ${output}    None


Check Nitesh record is present in Person Table
    Check If Exists In Database     select id from niteshdb.person where first_name="Nitesh"

Check If Not Exists In DB - Joe
    Check If Not Exists In Database    SELECT id FROM person WHERE first_name = 'Joe';

Table Must Exist - person
    Table Must Exist    person

Verify Row Count is 0
    Row Count is 0    SELECT * FROM person WHERE first_name = 'NotHere';

Retrieve Row Count
    ${output} =    Row Count    SELECT id FROM person;
    Log    ${output}
    Should Be Equal As Strings    ${output}    9

Verify Row Count is Equal to X
    Row Count is Equal to X    SELECT id FROM person;    9

Verify Row Count is Greater Than X
    Row Count is Greater Than X    SELECT * FROM person;    1




Verify Row Count is Less Than X
    Row Count is Less Than X    SELECT id FROM person where last_name="Kumar";    7


Update Record in prson table:
    ${output}=  Execute SQL String      Update person set first_name="Ravi" where id=103;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

### fetch data from db
Retrieve records from person table
    @{queryResults} =  Query        SELECT * FROM person;
    ### all the recors from table
    Log To Console  Many @{queryResults}

Delete records from person table:
    ${output}=  Execute SQL String       Delete from person;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

