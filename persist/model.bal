import ballerina/persist as _;
import ballerina/time;

public type IdentityRequest record {|
    readonly string id;
    string initials_fullname;
    string fullname;
    string NIC;
    string gender;
    string contact_num;
    string email;
    string province;
    string district;
    string DS_division;
    string GN_division;
    string address;
    time:Date DOB;
    time:Date applied_date;
    string approved_by;
    string status;
|};
