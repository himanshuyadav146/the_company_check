class SocialListModel {
 final String? title;
 final String imglink;
 final String? link;

 const SocialListModel({this.title,required this.imglink,this.link});

  SocialListModel.fromJson(Map<String, dynamic> json, this.title, this.imglink, this.link) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['imglink'] = this.imglink;
    data['link'] = this.link;
    return data;
  }
}
