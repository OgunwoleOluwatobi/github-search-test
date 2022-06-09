class UsersResponse {
  int? totalCount;
  bool? incompleteResults;
  List<User>? items;

  UsersResponse({this.totalCount, this.incompleteResults, this.items});

  UsersResponse.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      items = <User>[];
      json['items'].forEach((v) {
        items!.add(new User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['incomplete_results'] = this.incompleteResults;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? receivedEventsUrl;
  String? type;
  double? score;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? eventsUrl;
  bool? siteAdmin;

  User(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.receivedEventsUrl,
      this.type,
      this.score,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.eventsUrl,
      this.siteAdmin});

  User.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    score = json['score'].toDouble();
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    eventsUrl = json['events_url'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['node_id'] = this.nodeId;
    data['avatar_url'] = this.avatarUrl;
    data['gravatar_id'] = this.gravatarId;
    data['url'] = this.url;
    data['html_url'] = this.htmlUrl;
    data['followers_url'] = this.followersUrl;
    data['subscriptions_url'] = this.subscriptionsUrl;
    data['organizations_url'] = this.organizationsUrl;
    data['repos_url'] = this.reposUrl;
    data['received_events_url'] = this.receivedEventsUrl;
    data['type'] = this.type;
    data['score'] = this.score;
    data['following_url'] = this.followingUrl;
    data['gists_url'] = this.gistsUrl;
    data['starred_url'] = this.starredUrl;
    data['events_url'] = this.eventsUrl;
    data['site_admin'] = this.siteAdmin;
    return data;
  }
}
