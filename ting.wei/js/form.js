


const checkAnimalAddForm = () => {
	$.mobile.navigate($("#animal-add-destination").val());
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

   drawAnimalList(r.result,"Search produced no results.");
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








