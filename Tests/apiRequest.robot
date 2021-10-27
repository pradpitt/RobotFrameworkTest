*** Settings ***
Documentation  API Tests are in this suite
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections


*** Variables ***
${baseUrl}  http://thetestingworldapi.com/
${studentId}  525828

*** Test Cases ***
Test_02_WebApi_Requst
    Create Session   getStudentDetails  ${baseUrl}
    ${response} =  Get On Session  getStudentDetails  api/studentsDetails/${studentId}
    ${responseCodeString} =  convert to string  ${response.status_code}
    Log To Console  Response status code is ${response.status_code}
    Log To Console  Response content is ${response.json()}
    should be equal  ${responseCodeString}   200
    ${studentNameList}=  get value from json  ${response.json()}  data.first_name
    ${studentName}=  get from list   ${studentNameList}  0
    Should Be Equal  ${studentName}  Gillian
