import ballerina/log;
import ballerina/uuid;
import ballerinax/mysql.driver as _;
import ballerina/time;

isolated function addRequest()
// isolated function addRequest(Citizen citizen) returns PoliceRequest|error {

//     time:Date tnow = time:utcToCivil((time:utcNow()));
//     PoliceRequest request = {id: uuid:createType4AsString(), citizenId: citizen.id, status: "PENDING", appliedTime: tnow, reason: ""};
//     string[]|error added = dbclient->/policerequests.post([request]);
//     if added is error {
//         return added;
//     } else {
//         return request;
//     }
// }