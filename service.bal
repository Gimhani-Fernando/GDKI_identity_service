import ballerina/time;
import ballerina/uuid;
import ballerinax/mysql.driver as _;
import ballerina/log;

isolated function addRequest(string initials_fullname, string fullname, string nic, string gender, string contact_num, string email, string address, time:Date DOB, string grama_division) returns IdentityRequest|error
{
    IdentityRequest request = {
        id: uuid:createType4AsString(),
        initials_fullname: initials_fullname,
        fullname: fullname,
        NIC: nic,
        DOB: DOB,
        approved_by: "",
        contact_num: contact_num,
        address: address,
        gender: gender,
        grama_divisionId: grama_division,
        applied_date: time:utcToCivil(time:utcNow()),
        email: email,
        status: "Pending"
    };

    string[]|error added = dbclient->/identityrequests.post([request]);
    if (added is error) {
        return request;
    }
    return request;

}

isolated function changeRequestStatus(string request_id, string status, string grama_id) returns ()|error {
    IdentityRequest|error updated = dbclient->/identityrequests/[request_id].put({status: status, approved_by: grama_id});
    if (updated is error) {
        return updated;
    }
    return ();
}

isolated function getRequests() returns IdentityRequest[]|error {
    IdentityRequest[]|error requests = from var request in dbclient->/identityrequests(targetType = IdentityRequest)
        select request;
    if requests is error {
        log:printError("Error while retrieving requests from the database", 'error = requests);
        return requests;
    } else {
        return requests;
    }
}

isolated function getRequest(string id) returns IdentityRequest|error {
    IdentityRequest|error request = dbclient->/identityrequests/[id];
    if request is error {
        return request;
    } else {
        return request;
    }
}

isolated function getRequestsByGramaDivision(string grama_division_id) returns IdentityRequest[]|error {
    IdentityRequest[]|error requests = from var request in dbclient->/identityrequests(targetType = IdentityRequest)
        where request.grama_divisionId == grama_division_id
        select request;
    if requests is error {
        log:printError("Error while retrieving requests from the database", 'error = requests);
        return requests;
    } else {
        return requests;
    }
}

isolated function getRequestByStatus(string status) returns IdentityRequest[]|error {
    IdentityRequest[]|error requests = from var request in dbclient->/identityrequests(targetType = IdentityRequest)
        where request.status == status
        select request;
    if requests is error {
        log:printError("Error while retrieving requests from the database", 'error = requests);
        return requests;
    } else {
        return requests;
    }
}

isolated function getRequestByStatusAndGramaDivision(string status, string grama_division_id) returns IdentityRequest[]|error {
    IdentityRequest[]|error requests = from var request in dbclient->/identityrequests(targetType = IdentityRequest)
        where request.status == status
        where request.grama_divisionId == grama_division_id
        select request;
    if requests is error {
        log:printError("Error while retrieving requests from the database", 'error = requests);
        return requests;
    } else {
        return requests;
    }
}

isolated function getRequestByNIC(string nic) returns IdentityRequest[]|error {
    IdentityRequest[]|error requests = from var request in dbclient->/identityrequests(targetType = IdentityRequest)
        where request.NIC == nic
        select request;
    if requests is error {
        log:printError("Error while retrieving requests from the database", 'error = requests);
        return requests;
    } else {
        return requests;
    }
}

function initializeDbClient() returns Client|error {
    return new Client();
}

final Client dbclient = check initializeDbClient();
