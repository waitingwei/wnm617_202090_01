
const checkUserEditForm = () => {
   let username = $("#user-edit-username").val();
   let name = $("#user-edit-name").val();
   let email = $("#user-edit-email").val();
   let age = $("#user-edit-age").val();

   query({
      type:'update_user',
      params:[username,name,email,age,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}

const checkAnimalAddForm = () => {
   let name = $("#fairy-add-name").val();
   let type = $("#fairy-pick-type").val();
   // let type = $("#fairy-add-type").val(`$_POST['fairy-add-type']`);
   let contest = $("#fairy-add-contest").val();
   let description = $("#fairy-add-description").val();

   query({
      type:'insert_fairy',
      params:[sessionStorage.userId,name,type,contest,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      $("#fairy-add-form")[0].reset();

      console.log(d);
      sessionStorage.animalId = d.id;
      $.mobile.navigate($("#fairy-add-destination").val());
   })
}

const checkLocationAddForm = () => {
   let lat = $("#location-add-lat").val();
   let lng = $("#location-add-lng").val();
   let description = $("#location-add-description").val();
   // let type = $("#fairy-add-type").val(`$_POST['fairy-add-type']`);

   query({
      type:'insert_location',
      params:[sessionStorage.animalId,+lat,+lng,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }

      $("#location-add-form")[0].reset();

      console.log(d);

      window.history.go(-3);
   })
}


const checkAnimalProfileUpdateForm = () => {
   let name = $("#animal-edit-name").val();
   let type = $("#animal-edit-type").val();
   let contest = $("#animal-edit-contest").val();
   let description = $("#animal-edit-description").val();

   query({
      type:'update_fairy',
      params:[name,type,contest,description,sessionStorage.animalId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}


const checkSearchForm = async() => {
   let s = $("#list-search-input").val()
   console.log(s);

   let r = await query({
      type:"search_fairy",
      params:[s,sessionStorage.userId]
   })

   drawAnimalList(r.result,"Search produced no results.");

   console.log(r)
}



const checkListFilter = async ({field,value}) => {
   let r = value=="" ?
      await query({
         type:'fairy_by_user_id',
         params:[sessionStorage.userId]
      }) :
      await query({
         type:'filter_fairy',
         params:[field,value,sessionStorage.userId]
      });

   drawAnimalList(r.result,'<img src="img/emptyFilterStatus.png" />');
}



const checkUpload = file => {
   let fd = new FormData();
   fd.append("image",file);

   return fetch('data/api.php',{
      method:'POST',
      body:fd
   }).then(d=>d.json());
}

const checkUserUploadForm = () => {
   let upload = $("#user-upload-image").val()
   if(upload=="") return;

   query({
      type:'update_user_image',
      params:[upload,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();

   })
}

const checkUserPasswordUpateForm = () => {
   let oldpassword = $("#user-password-oldpassword").val();
   let password = $("#suser-password-password").val();
   let passwordconfirm = $("#user-password-confirm").val();

   if(password!=passwordconfirm) {
      makeWarning("#signin-warning","Password don't match");
      throw "password don't match";
      return;  
   } else {
      query({type:'update_password',params:[password]})
      .then(d=>{
         if(d.error) {
            throw d.error;
         }
         console.log(d);
         makeWarning("#signin-warning","Password changed");

      })
   }
}





const checkAnimalDelete = id => {
   query({
      type: 'delete_animal',
      params:[id]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-2);
   })
}