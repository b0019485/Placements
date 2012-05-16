package placements

class ApplyController {

    def index() { }

    def processApplication()  

{  log.debug (params.studentID)
   log.debug (params.jobID)
   def student = Student.findByName(params.studentID)
   def job = PlacementOpportunity.findByJobtitle(params.jobID)
   log.debug (params)
   def appliedstatus = Status.findByCode ("Applied")

   if (student && job){
   def newApplication = new Application(student:student, placement:job, status:appliedstatus)
     if ( newApplication.save() ) {
       log.debug("Saved OK");
     }
     else {
       newApplication.errors.each { err ->
         log.debug(err);
       }
     }
   }
else
{log.error("Student ${student} or job ${job} was Null")

}
redirect (action:"index")
}
}
