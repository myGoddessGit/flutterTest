class BSZTInfo {
	List<BSZTbean> info;
	States state;
	Act act;
	BSZTInfo({this.info, this.act, this.state});
	BSZTInfo.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
      info = new List<BSZTbean>();
			json['data'].forEach((v){
        info.add(new BSZTbean.fromJson(v));
			});
		}
		state = json['state'];
		act = json['act'];
	}
	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.info != null) {
			data['data'] = this.info.map((v) => v.toJson()).toList();
		}
		data['state'] = this.state;
		return data;
	}
}
class BSZTbean {
	String workName;
	bool isStar;
	String year;
	String companyName;
	int count;
	String logo;
	int id;

	BSZTbean({this.workName, this.isStar, this.year, this.companyName, this.count, this.logo, this.id});

	BSZTbean.fromJson(Map<String, dynamic> json) {
		workName = json['work_name'];
		isStar = json['isStar'];
		year = json['year'];
		companyName = json['company_name'];
		count = json['count'];
		logo = json['logo'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['work_name'] = this.workName;
		data['isStar'] = this.isStar;
		data['year'] = this.year;
		data['company_name'] = this.companyName;
		data['count'] = this.count;
		data['logo'] = this.logo;
		data['id'] = this.id;
		return data;
	}
}
class Act {
  String act;

  Act({this.act});

  Act.fromJson(Map<String, dynamic> json) {
    act = json['act'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['act'] = this.act;
    return data;
  }
}

class States {
  String state;

  States({this.state});

  States.fromJson(Map<String, dynamic> json) {
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    return data;
  }
}
