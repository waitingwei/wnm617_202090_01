

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
      <div class="fairy-profile-stats">Feature</div>
      <div class="fairy-profile-value">${o.contest}</div>
      <div class="fairy-profile-stats">Description</div>
      <div class="fairy-profile-value">${o.description}</div>
      <div class="fairy-profile-stats">Create Time</div>
      <div class="fairy-profile-value">${o.date_create}</div>
      
   </div>
   `);


const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
   return `<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input id="${namespace}-${name}" type="${type}" class="form-input data-role="none" placeholer="${placeholder}" value="${value}">
   </div>`;
}

const makeUserProfileUpdateForm = o => `
${FormControl({
   namespace:'user-edit',
   name:'username',
   displayname:'Username',
   type:'text',
   placeholer:'Type your username',
   value:o.username
})}
${FormControl({
   namespace:'user-edit',
   name:'name',
   displayname:'Full Name',
   type:'text',
   placeholer:'Type your full name',
   value:o.name
})}
${FormControl({
   namespace:'user-edit',
   name:'email',
   displayname:'Email',
   type:'text',
   placeholer:'Type your user email',
   value:o.email
})}
${FormControl({
   namespace:'user-edit',
   name:'age',
   displayname:'Age',
   type:'text',
   placeholer:'Type your age',
   value:o.age
})}

<button type="submit" class="form-button" data-role="none">Save</button>
`;


const makeAnimalProfileUpdateForm = o => `

${FormControl({
   namespace:'animal-edit',
   name:'name',
   displayname:'Fairy Name',
   type:'text',
   placeholer:'Type the fairy name',
   value:o.name
})}
${FormControl({
   namespace:'animal-edit',
   name:'contest',
   displayname:'Feature',
   type:'text',
   placeholer:'Type the feature',
   value:o.contest
})}

<div class="form-control">
   <label for="animal-edit-description" class="form-label">Description</label>
   <textarea id="animal-edit-description" class="form-input data-role="none" placeholer="Type a description" style="height:6em">${o.description}
   </textarea>
   <div a href="#" class=" form-button js-animal-edit">Save</div>
   <div a href="#" class=" form-button-gray js-animal-delete" data-id="${o.id}">Delete</div>

</div>

`;


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
