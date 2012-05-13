import placements.Student
class BootStrap {

    def init = { servletContext ->
	def zackstu = new Student(name:'Zack',coursecode:'G500',notes:'Has dyslexia').save();

	def joshstu = new Student(name:'Josh',coursecode:'G501',notes:'-').save();

	def zebstu = new Student(name:'Zeb',coursecode:'G502',notes:'Misbehaved').save();

    }
    def destroy = {
    }
}
