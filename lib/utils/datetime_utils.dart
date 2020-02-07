import 'package:ESmile/interfaces/i_datetimeutil.dart';
import 'package:intl/intl.dart';

class DateTimeUtils implements IDateTimeUtils
{


  String SlackTimeAgo(DateTime currentdatetime, DateTime seconddatetime){

    String timeago;
    //If seconddatetime and currentdateime is on same day
    if(currentdatetime.difference(seconddatetime).inDays ==0){

      try{
            timeago = new DateFormat.jm().format(seconddatetime);
            return timeago;
           
      }
      catch(e){
        int ds = 0;
      }
      
    }
    else
    {
      //if currentdate is future and seconddatetime is past
      if(currentdatetime.isAfter(seconddatetime)){

        //if secondate is yesterday
        if(currentdatetime.difference(seconddatetime).inDays == 1){

          timeago = "Yesterday";

        }
        else if(currentdatetime.difference(seconddatetime).inDays >= 1 && currentdatetime.difference(seconddatetime).inDays<=7){
            timeago = new DateFormat("EEE").format(seconddatetime);
        }
        else{
           timeago = new DateFormat("MMM d").format(seconddatetime);

        }

      }
      else{
            timeago= "error";
      }

      return timeago.isEmpty ?"error" :timeago;

    }
  }
 

  Future<DateTime> CurrentDatetime() async{

    return DateTime.now();
  }

  @override
  DateTime ConvertStringToDateTime(String date) {
     try {
      var d = new DateFormat('dd-MM-yyyy').parse(date);
      return d;
    } catch (e) {
      return null;
    }
  }



  


}