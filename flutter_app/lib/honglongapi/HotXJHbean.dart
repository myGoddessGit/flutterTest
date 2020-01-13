class HotXJHInfo {
	List<HotXJHbean> data;
	String status;
	int topAdCount;

	HotXJHInfo({this.data, this.status, this.topAdCount});

	HotXJHInfo.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<HotXJHbean>();
			json['data'].forEach((v){
				data.add(new HotXJHbean.fromJson(v));
			});
		}
		status = json['status'];
		topAdCount = json['topAdCount'];
	}
	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
			data['data'] = this.data.map((v) => v.toJson()).toList();
		}
		data['status'] = this.status;
		data['topAdcount'] = this.topAdCount;
		return data;
	}
}

class HotXJHbean {
	dynamic assocLiveId;
	String address;
	int companyId;
	int totalClicks;
	String title;
	int isCancel;
	String logoUrl;
	String universityShortName;
	int isOfficial;
	String zone;
	bool isSaved;
	int univId;
	int clicks;
	String company;
	int id;
	String holdtime;
	bool isExpired;

	HotXJHbean({this.assocLiveId, this.address, this.companyId, this.totalClicks, this.title, this.isCancel, this.logoUrl, this.universityShortName, this.isOfficial, this.zone, this.isSaved, this.univId, this.clicks, this.company, this.id, this.holdtime, this.isExpired});

	HotXJHbean.fromJson(Map<String, dynamic> json) {
		assocLiveId = json['assocLiveId'];
		address = json['address'];
		companyId = json['company_id'];
		totalClicks = json['totalClicks'];
		title = json['title'];
		isCancel = json['is_cancel'];
		logoUrl = json['logoUrl'];
		universityShortName = json['universityShortName'];
		isOfficial = json['is_official'];
		zone = json['zone'];
		isSaved = json['isSaved'];
		univId = json['univ_id'];
		clicks = json['clicks'];
		company = json['company'];
		id = json['id'];
		holdtime = json['holdtime'];
		isExpired = json['isExpired'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['assocLiveId'] = this.assocLiveId;
		data['address'] = this.address;
		data['company_id'] = this.companyId;
		data['totalClicks'] = this.totalClicks;
		data['title'] = this.title;
		data['is_cancel'] = this.isCancel;
		data['logoUrl'] = this.logoUrl;
		data['universityShortName'] = this.universityShortName;
		data['is_official'] = this.isOfficial;
		data['zone'] = this.zone;
		data['isSaved'] = this.isSaved;
		data['univ_id'] = this.univId;
		data['clicks'] = this.clicks;
		data['company'] = this.company;
		data['id'] = this.id;
		data['holdtime'] = this.holdtime;
		data['isExpired'] = this.isExpired;
		return data;
	}
}
