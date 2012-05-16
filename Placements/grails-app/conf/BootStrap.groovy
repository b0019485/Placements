import placements.Student
import placements.Status
import placements.PlacementOpportunity
class BootStrap {
    
    def init = { servletContext ->

    def Applied = new Status(code:"Applied",description:"Applied").save();

    def NotInvitedForInterview = new Status(code:"Not Invited For Interview",description:"Not Invited For Interview").save();

    def InterviewForInterview = new Status(code:"Interview For Interview",description:"Interview For Interview").save();

    def NotOffered = new Status(code:"Not Offered",description:"Not Offered").save();

    def Offered = new Status(code:"Offered",description:"Offered").save();

    def Accepted = new Status(code:"Accepted",description:"Accepted").save();

    def Rejected = new Status(code:"Rejected",description:"Rejected").save();


	def zackstu = new Student(name:'Zack',coursecode:'G500',notes:'Has dyslexia').save();

	def joshstu = new Student(name:'Josh',coursecode:'G501',notes:'-').save();

	def zebstu = new Student(name:'Zeb',coursecode:'G502',notes:'Misbehaved').save();


    def programmingJob = new PlacementOpportunity(jobtitle:'VisualBasic',companyname:'Access Network Ltd').save();
    
    def technicianJob = new PlacementOpportunity(jobtitle:'Engineer',companyname:'Sheffield Hallam University').save();
    
    def superheroJob = new PlacementOpportunity(jobtitle:'Ian',companyname:'Paradise House Ltd').save();



    }
    def destroy = {
    }

}
