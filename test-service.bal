import choreo_test.choreo_test;
import ballerina/http;

service / on new http:Listener(9090) {
    resource function get greeting(string name) returns string {
        return choreo_test:hello(name);
    }
}