import 'dart:convert';

List<DotaHeroData> dotaHeroDataListFromJson(String str) => List<DotaHeroData>.from(json.decode(str).map((x) => DotaHeroData.fromJson(x)));
DotaHeroData dotaHeroDataFromJson(String str) => DotaHeroData.fromJson(json.decode(str));

String dotaHeroDataToJson(List<DotaHeroData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DotaHeroData {
    DotaHeroData({
        required this.id,
        required this.imageUrl,
        required this.localizedName,
        required this.name,
    });

    int id;
    dynamic imageUrl;
    String localizedName;
    String name;

    factory DotaHeroData.fromJson(Map<String, dynamic> json) => DotaHeroData(
        id: json["id"],
        imageUrl: json["image_url"],
        localizedName: json["localized_name"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "localized_name": localizedName,
        "name": name,
    };
}
