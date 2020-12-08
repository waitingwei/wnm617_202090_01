

const makeAnimalList = templater(o=>`
   <div class="animallist-item js-animal-jump" data-id="${o.id}">
      <div class="animallist-icon">
         <img src="${o.img}" alt="">
      </div>
      <div class="animallist-description">
         <div class="animallist-time">${o.date_create}</div>
         <div class="animallist-name">${o.name}</div>
         <div class="animallist-contest">${o.contest}</div>
      </div>
      <div class="animallist-type">${o.type}</div>
   </div>
   `);

const makeUserProfile = templater(o=>`
   <div class="user-profile-image">
      <img src="${o.img}" alt="">
   </div>
   <div style="padding:1em">
      <div class="user-profile-name">${o.name}</div>
   </div>
   `);

const makeAnimalProfile = templater(o=>`
   <div class="fairy-profile-info">
      <div class="center-image">
         <img src="${o.img}" alt=""></div>
   </div>
   <div class="animalprofile-description">

      <div class="fairy-profile-name">${o.name}</div>
      <div class="animallist-type">${o.type}</div>
      <div class="fairy-profile-stats">Contest</div>
      <div class="fairy-profile-value">${o.contest}</div>
      <div class="fairy-profile-stats">Create Time</div>
      <div class="fairy-profile-value">${o.date_create}</div>
       <div class="fairy-profile-stats">Description</div>
      <div class="fairy-profile-value">${o.description}</div>
      
   </div>
   `);

const makeAnimalPopup = o => `

   <div class="animallist-popup js-animal-jump" data-id="${o.animal_id}">
      <div class="animallist-icon">
         <img src="${o.img}" alt=""></div>
      <div class="animallist-popup-description">
         <div class="animallist-time">${o.date_create}</div>
         <div class="animallist-name">${o.name}</div>
          <div class="animallist-contest">${o.contest}</div>

      </div>

   </div>
   `;




const drawAnimalList = (a,empty_phrase="No animals yet, you should add some.") => {
   $("#list-page .animallist").html(
      a.length ? makeAnimalList(a) : empty_phrase
   )
}

const capitalize = s => s[0].toUpperCase()+s.substr(1);

const filterList = (fairy,type) => {
   let a = [...(new Set(fairy.map(o=>o[type])))];
   return templater(o=>`<div class="filter" data-field="${type}" data-value="${o}">${capitalize(o)}</div>`)(a);
}

const makeFilterList = (fairy) => {
   return `
   <div class="filter" data-field="type" data-value="">All</div>
   |
   ${filterList(fairy,'type')}
   |
   ${filterList(fairy,'contest')}
   `
}


const makeUploaderImage = ({namespace,folder,name}) => {
   console.log(namespace,folder,name)
   $(`#${namespace}-image`).val(folder+name);
   $(`#${namespace}-page .image-uploader`)
      .css({'background-image':`url(${folder+name}`})
}
