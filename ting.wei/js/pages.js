
// go look up async and await
const ListPage = async() => {
   let d = await query({type:'fairy_by_user_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#list-page .animallist").html(
      d.result.length ?
      makeAnimalList(d.result) :
      "Username or email already exist"
      )
}





const RecentPage = async() => {
   let d = await query({type:'recent_locations',params:[sessionStorage.userId]});

   console.log(d)

   let valid_animals = d.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

   let map_el = await makeMap("#recent-page .map");

   makeMarkers(map_el,valid_animals);

   map_el.data("markers").forEach((o,i)=>{
      o.addListener("click",function(){

         map_el.data("infoWindow")
            .open(map_el.data("map"),o);
         map_el.data("infoWindow")
            .setContent(makeAnimalPopup(valid_animals[i]));
      })
   });
}




const UserProfilePage = async() => {
   let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#user-profile-page .profile").html(makeUserProfile(d.result))
}



const UserProfileEditPage = async() => {
   let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#user-edit-form").html(makeUserProfileUpdateForm(d.result[0]))

  //    // dule - https://stackoverflow.com/questions/740195/adding-options-to-a-select-using-jquery
  // d.result.forEach((d) => {
  //   $("#user-edit-form #gender-select").append($('<option>', {
  //     value: d.id,
  //     text: d.gender
  //   }));
  // });

}

const FariyAddPage = async() => {
   query({type:'fairy_by_id',params:[sessionStorage.animalId]})
   .then(d=>{
      console.log(d);
      $("#animal-profile-page .profile")
         .html(makeAnimalProfile(d.result))
   });

   query({type:'locations_by_animal_id',params:[sessionStorage.animalId]})
   .then(d=>{
      console.log(d);
      makeMap("#fairy-add-page .map").then(map_el=>{
         makeMarkers(map_el,d.result)
      });
   });

   let d = await query({type:'fairy_by_user_id', params: [sessionStorage.userId]});

  // dule - https://stackoverflow.com/questions/740195/adding-options-to-a-select-using-jquery
  d.result.forEach((d) => {
    $("#fairy-add-page #fairy_type").append($('<option>', {
      value: d.id,
      text: d.type
    }));
  });
}

  

const AnimalProfilePage = async() => {
   query({type:'fairy_by_id',params:[sessionStorage.animalId]})
   .then(d=>{
      console.log(d);
      $("#animal-profile-page .profile")
         .html(makeAnimalProfile(d.result))
   });

   query({type:'locations_by_animal_id',params:[sessionStorage.animalId]})
   .then(d=>{
      console.log(d);
      makeMap("#animal-profile-page .map").then(map_el=>{
         makeMarkers(map_el,d.result)
      });
   });
  
}


const AnimalProfileEditPage = async() => {
   let d = await query({type:'fairy_by_id',params:[sessionStorage.animalId]});

   console.log(d);

   $("#animal-profile-edit-form").html(makeAnimalProfileUpdateForm(d.result[0]))
}


const LocationAddPage = async() => {
   let map_el = await makeMap("#location-add-page .map")
   makeMarkers(map_el, []);

  let map = map_el.data('map');

  map.addListener("click", (e) => {
    let posFromClick = {lat: e.latLng.lat(), lng: e.latLng.lng()};
    let posFromCenter = {lat: map.getCenter().lat(), lng: map.getCenter().lng()};
    console.log(posFromCenter, posFromClick);
    $("#location-add-lat").val(posFromClick.lat);
    $("#location-add-lng").val(posFromClick.lng);

    makeMarkers(map_el, [posFromClick], false);
  })
}



// // dule - http://sonjajons.com/aau/wnm617/jonsdottir.sonja/#location-add-page
// const FairyAddPage = async() => {
//   let map_el = await makeMap("#fairy-add-page .map");
//   makeMarkers(map_el, []);

//   let map = map_el.data('map');
//   map.addListener("click", (e) => {
//     let posFromClick = {lat: e.latLng.lat(), lng: e.latLng.lng()};
//     let posFromCenter = {lat: map.getCenter().lat(), lng: map.getCenter().lng()};
//     console.log(posFromCenter, posFromClick);
//     $("#location-add-lat").val(posFromClick.lat);
//     $("#location-add-lng").val(posFromClick.lng);

//     makeMarkers(map_el, [posFromClick], false);
//   })

//   let d = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});

//   // dule - https://stackoverflow.com/questions/740195/adding-options-to-a-select-using-jquery
//   d.result.forEach((d) => {
//     $("#location-add-page #spotted-habit").append($('<option>', {
//       value: d.id,
//       text: d.name
//     }));
//   });
// }
