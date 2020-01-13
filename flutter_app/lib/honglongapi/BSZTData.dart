class BSZTData {
	BSZTAct act;
	BSZTState state;
	List<BSZTInfo> info;
	BSZTData ({this.act, this.state, this.info});
	BSZTData .fromJson(Map<String, dynamic> json) {
		act = json['act'] != null ? new BSZTAct.fromJson(json['act']) : null;
		state = json['state'] != null ? new BSZTState.fromJson(json['state']) : null;
		if (json['info'] != null) {
			info = new List<BSZTInfo >();(json['info'] as List).forEach((v) { info.add(new BSZTInfo .fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.act != null) {
      data['act'] = this.act.toJson();
    }
		if (this.state != null) {
      data['state'] = this.state.toJson();
    }
		if (this.info != null) {
      data['info'] =  this.info.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class BSZTAct {
	String act;

	BSZTAct({this.act});

	BSZTAct.fromJson(Map<String, dynamic> json) {
		act = json['act'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['act'] = this.act;
		return data;
	}
}

class BSZTState{
	String state;

	BSZTState({this.state});

	BSZTState.fromJson(Map<String, dynamic> json) {
		state = json['state'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['state'] = this.state;
		return data;
	}
}

class BSZTInfo {
	String workName;
	bool isStar;
	String year;
	String companyName;
	int count;
	String logo;
	int id;

	BSZTInfo ({this.workName, this.isStar, this.year, this.companyName, this.count, this.logo, this.id});

	BSZTInfo .fromJson(Map<String, dynamic> json) {
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

