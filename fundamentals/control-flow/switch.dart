void main(List<String> args) {
  print(fileSystem("WRITE"));
}

String fileSystem(String operation) {
  switch (operation) {
    case "OPEN":
      return "File Opening";
    case "CLOSE":
      return "File Closing";
    case "WRITE":
      return "Writing File";
    default:
      return "Operation Error";
  }
}

// continue and label in switch case