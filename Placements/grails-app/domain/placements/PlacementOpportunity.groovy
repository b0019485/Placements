package placements

class PlacementOpportunity {
static constraints = {
	companyname()
	jobtitle()
	
}

  String jobtitle
  String companyname

  static hasMany = [applications:Application]
}
