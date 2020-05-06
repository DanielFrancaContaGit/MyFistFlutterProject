class Api {
  int i25;
  double d50;
  int i75;
  int count;
  int max;
  double mean;
  double min;
  double std;

  Api(
      {this.i25,
      this.d50,
      this.i75,
      this.count,
      this.max,
      this.mean,
      this.min,
      this.std});

  Api.fromJson(Map<String, dynamic> json) {
    i25 = json['25%'];
    d50 = json['50%'];
    i75 = json['75%'];
    count = json['count'];
    max = json['max'];
    mean = json['mean'];
    min = json['min'];
    std = json['std'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['25%'] = this.i25;
    data['50%'] = this.d50;
    data['75%'] = this.i75;
    data['count'] = this.count;
    data['max'] = this.max;
    data['mean'] = this.mean;
    data['min'] = this.min;
    data['std'] = this.std;
    return data;
  }
}
