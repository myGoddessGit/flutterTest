class ResumeMBInfo {
	List<ResumeMBbean> data;
	String status;

	ResumeMBInfo({this.data, this.status});
	ResumeMBInfo.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<ResumeMBbean>();
			json['data'].forEach((v){
				data.add(new ResumeMBbean.fromJson(v));
			});
		}
		status = json['status'];
	}
	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
			data['data'] = this.data.map((v) => v.toJson()).toList();
		}
		data['status'] = this.status;
		return data;
	}
}
class ResumeMBbean {
	int templateNumber;
	String pathUrl;
	int id;
	int sort;
	String title;
	String introduction;

	ResumeMBbean({this.templateNumber, this.pathUrl, this.id, this.sort, this.title, this.introduction});

	ResumeMBbean.fromJson(Map<String, dynamic> json) {
		templateNumber = json['template_number'];
		pathUrl = json['pathUrl'];
		id = json['id'];
		sort = json['sort'];
		title = json['title'];
		introduction = json['introduction'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['template_number'] = this.templateNumber;
		data['pathUrl'] = this.pathUrl;
		data['id'] = this.id;
		data['sort'] = this.sort;
		data['title'] = this.title;
		data['introduction'] = this.introduction;
		return data;
	}
}
