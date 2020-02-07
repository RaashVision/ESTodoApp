import 'package:ESmile/interfaces/i_validator.dart';
import 'package:ESmile/settings.dart';
import 'package:intl/intl.dart';

class ValidatorUtils implements IValidator{

String validatorTitle(String fullName) {

    if (fullName == null || fullName.isEmpty) {
      return "Title cannot be empty!";
    }

    else if(fullName.length >Settings.maxlength){
      return "Cannot more then 150 characters";
    }

    else {
      return null;
    }
  }

  String validatorDate(DateTime rawdatetime) {
 try {
    String datetime = rawdatetime.toString();

    if (datetime == null || datetime.isEmpty) {
      return "Date cannot be empty!";
    }

   
      var parsed = new DateFormat("dd-MM-yyyy").parse(datetime);

      return null;
    }
    catch (e) {
      return "Please input correct format of date";
    }
  }




}