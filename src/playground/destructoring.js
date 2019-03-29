// const person = {
  
//   age:21,
//   location:{
//     city:'JEUU',
//     temp:69
//   }
// }

// const {name: firstname ='anonymous',age} = person;


// // const name = person.name;
// // const age = person.age;
// console.log(`${firstname} is ${age}`)

// const  {city,temp:temperature} = person.location

// if(city && temperature)
// console.log(`its ${temperature} in ${city}`)


// const book = {
//   title : 'EGO is the Enemy',
//   author:'Ryan holuday',
//   publusher: {
//     name:'penguin'
//   }
// }

// const {name:publisherName = 'self-published'} = book.publusher

// console.log(publisherName)



//Array destructoring

const address = ['','Philadelphia','Pensilvania','123123'];

const [ , , state = 'New york'] = adress;


console.log(`you are in ${state}`)


const item = ['Coffe (hot)','2 dolar','2.58','2.75'];

const [hot, ,medium] = item;

console.log(`a meduum ${hot} costs ${medium} `)