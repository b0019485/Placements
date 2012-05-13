import placements.Student
class BootStrap {

    def init = { servletContext ->
	new Student(name:'Zack',coursecode:'G500',notes:'Has dyslexia').save();

	new Student(name:'Josh',coursecode:'G501',notes:'-').save();

	new Student(name:'Zeb',coursecode:'G502',notes:'Misbehaved').save();

    }
    def destroy = {
    }
}
