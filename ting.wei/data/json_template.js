// user template

[
  '{{repeat(10)}}',
  {
    id: '{{index(1)}}',
    name: '{{firstName()}} {{surname()}}',
    username: function() {
      return 'user'+this.id;
    },
    email: function() {
      return this.username+'@gmail.com';
    },
    age: '{{integer(6, 18)}}',
    gender: '{{gender()}}',
    password: 'md5(pass)',
    img:function(tags){
      return 'https://via.placeholder.com/400/'+
        tags.integer(700,999) + '/fff/?text=' + this.username;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]


// fairy template

[
  '{{repeat(50)}}',
  {
    id:'{{index(1)}}',
    user_id: '{{integer(1,10)}}',
    
    name: '{{company()}}',
    
    type: '{{random("normal","dark","water","grass")}}',
    contest: '{{random("cute","clever","beautiful")}}',
    description: '{{lorem(3,"sentences")}}',
    
    img:function(tags) {
      return 'https://via.placeholder.com/400/'+
        tags.integer(700,999) + '/fff/?text=' + this.name;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]
 
 // LOCATIONS TEMPLATE

 [
  '{{repeat(250)}}',
  {
    id:'{{index(1)}}',
    animal_id: '{{integer(1,50)}}',
    lat:'{{floating(37.773967, 37.704173)}}',
    lng:'{{floating(-122.516280, -122.377867)}}',
    description: '{{lorem(3,"sentences")}}',
    photo: 'https://via.placeholder.com/400/',
    icon: 'https://via.placeholder.com/100/?text=ICON',
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]