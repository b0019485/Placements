package placements

class Status {
static constraints = {
	code(inList:["Applied","Not invited for Interview","Invited for Interview","Not Offered","Offered","Accepted","Rejected"])
	description()
    }

  String code
  String description

    
}
