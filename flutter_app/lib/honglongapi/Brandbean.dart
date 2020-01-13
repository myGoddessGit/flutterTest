class BrandInfo {
	List<BrandBean> data;
	String status;
	int topAdCount;


	BrandInfo({this.data, this.status, this.topAdCount});
	BrandInfo.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<BrandBean>();
			json['data'].forEach((v){
				data.add(new BrandBean.fromJson(v));
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
class BrandBean {
	String universityName;
	int applyType;
	String brandName;
	List<String> infokeyDisplay;
	int companyId;
	String kind;
	int totalClicks;
	String title;
	String logoUrl;
	int brandId;
	String universityShortName;
	String activeTime;
	int isOfficial;
	String catchtime;
	dynamic zone;
	bool isSaved;
	int univId;
	List<String> infocity;
	String company;
	int id;
	bool isExpired;

	BrandBean({this.universityName, this.applyType, this.brandName, this.infokeyDisplay, this.companyId, this.kind, this.totalClicks, this.title, this.logoUrl, this.brandId, this.universityShortName, this.activeTime, this.isOfficial, this.catchtime, this.zone, this.isSaved, this.univId, this.infocity, this.company, this.id, this.isExpired});

	BrandBean.fromJson(Map<String, dynamic> json) {
		universityName = json['universityName'];
		applyType = json['applyType'];
		brandName = json['brandName'];
		infokeyDisplay = json['infokeyDisplay']?.cast<String>();
		companyId = json['company_id'];
		kind = json['kind'];
		totalClicks = json['totalClicks'];
		title = json['title'];
		logoUrl = json['logoUrl'];
		brandId = json['brand_id'];
		universityShortName = json['universityShortName'];
		activeTime = json['active_time'];
		isOfficial = json['is_official'];
		catchtime = json['catchtime'];
		zone = json['zone'];
		isSaved = json['isSaved'];
		univId = json['univ_id'];
		infocity = json['infocity']?.cast<String>();
		company = json['company'];
		id = json['id'];
		isExpired = json['isExpired'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['universityName'] = this.universityName;
		data['applyType'] = this.applyType;
		data['brandName'] = this.brandName;
		data['infokeyDisplay'] = this.infokeyDisplay;
		data['company_id'] = this.companyId;
		data['kind'] = this.kind;
		data['totalClicks'] = this.totalClicks;
		data['title'] = this.title;
		data['logoUrl'] = this.logoUrl;
		data['brand_id'] = this.brandId;
		data['universityShortName'] = this.universityShortName;
		data['active_time'] = this.activeTime;
		data['is_official'] = this.isOfficial;
		data['catchtime'] = this.catchtime;
		data['zone'] = this.zone;
		data['isSaved'] = this.isSaved;
		data['univ_id'] = this.univId;
		data['infocity'] = this.infocity;
		data['company'] = this.company;
		data['id'] = this.id;
		data['isExpired'] = this.isExpired;
		return data;
	}
}
