syntax = "proto3";

package itemv1

import "google/protobuf/timestamp.proto";

option go_package = "github.com/yagi5/msmini-proto/client/item;item";

service ItemService {
  rpc SearchByName(SearchByNameRequest) returns (SearchByNameResponse);
}

message SearchByNameRequest {
  string name = 1;
}

message SearchByNameResponse {
  repeated Item items = 1;
}

message Item {
  string id = 1;
  string name = 2;
  string description = 3;
  int64 price = 4;
  string category = 5;
  google.protobuf.Timestamp created_at = 6;
  google.protobuf.Timestamp updated_at = 7;
}
