

const makeAnimalList = templater(o=>`
   <div class="animallist-item js-animal-jump" data-id="${o.id}">
      <div class="animallist-icon">
         <img src="${o.img}" alt="">
      </div>
      <div class="animallist-description">
         <div class="animallist-name">${o.name}</div>
         <div class="animallist-type"><strong>Type</strong> ${o.type}</div>
         <div class="animallist-breed"><strong>Contest</strong> ${o.contest}</div>
      </div>
   </div>
   `);

const makeUserProfile = templater(o=>`
   <div class="user-profile-image">
      <img src="${o.img}" alt="">
      <a href="#user-upload-page" class="floater bottom right"><img class="icon" src="img/icon/edit.svg" alt=""></a></a>
   </div>
   <div style="padding:1em">
      <h2>${o.name}</h2>
      <h3>@${o.username}</h3>
      <h3>${o.email}</h3>
      <div class="floater top right" style="font-size:1.25em"><a href="#user-settings-page">&equiv;</a></div>
   </div>
   `);

const makeAnimalProfile = templater(o=>`
   <div class="animal-profile-image">
      <img src="${o.img}" alt="">
   </div>
   <h2>${o.name}</h2>
   `);

const makeAnimalPopup = o => `
<div class="display-flex animal-popup">
   <div class="flex-none">
      <div class="animal-image">
         <img src="${o.img}" alt="">
      </div>
   </div>
   <div class="flex-none animal-popup-description">
      <h2>${o.name}</h2>
      <div>${o.type}</div>
      <div>${o.breed}</div>
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
