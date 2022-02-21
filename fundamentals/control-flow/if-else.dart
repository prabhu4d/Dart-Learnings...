void main(List<String> args) {
  var service = "storage";
  if (service == "compute") {
    print("EC2, Lambda, LightSail");
  } else if (service == "storage") {
    print("RDS, Aurora, DynamoDB, DocumentDB");
  } else if (service == "network") {
    print("VPC, Direct Connect, Internet Gateway");
  } else {
    print("SageMaker");
  }
}
