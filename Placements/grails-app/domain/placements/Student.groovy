package placements

class Student {
  static constraints = {
	name()
	coursecode()
	notes()
  }
  String name
  String coursecode
  String notes

  static hasMany = [applications:Application]

 
}
