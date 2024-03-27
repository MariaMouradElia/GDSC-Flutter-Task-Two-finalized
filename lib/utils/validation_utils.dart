class ValidationUtilities{

  static String? taskNameLength(String? input){
    if (input == null || input.length < 4) {
      return 'This data is required to complete the process';
    }
    return null;
  }

}