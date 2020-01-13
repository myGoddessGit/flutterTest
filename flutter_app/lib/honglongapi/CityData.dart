class CityData {
	College college;
	String status;

	CityData({this.college, this.status});

	CityData.fromJson(Map<String, dynamic> json) {
		college = json['college'] != null ? new College.fromJson(json['college']) : null;
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.college != null) {
      data['college'] = this.college.toJson();
    }
		data['status'] = this.status;
		return data;
	}
}

class College {
	List<CollegeCollege> college;

	List<String> xList;

	College({this.college, this.xList});

	College.fromJson(Map<String, dynamic> json) {
		if (json['college'] != null) {
			college = new List<CollegeCollege>();
			(json['college'] as List).forEach((v) { college.add(new CollegeCollege.fromJson(v)); });
		}
		xList = json['list']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.college != null) {
      data['college'] =  this.college.map((v) => v.toJson()).toList();
    }
		data['list'] = this.xList;
		return data;
	}
}

class CollegeCollege {
	String xPart;
	String name;
	String id;
	String type;

	CollegeCollege({this.xPart, this.name, this.id, this.type});

	CollegeCollege.fromJson(Map<String, dynamic> json) {
		xPart = json['part'];
		name = json['name'];
		id = json['id'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['part'] = this.xPart;
		data['name'] = this.name;
		data['id'] = this.id;
		data['type'] = this.type;
		return data;
	}
}
