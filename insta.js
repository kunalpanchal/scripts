let followings = []; //array of usernames you follow
let followers = [];  //array of usernames following you

console.log('Following', followings.length)
console.log('Followers', followers.length)

let nonFollowers = [];
for (let following of followings)
    if (!followers.includes(following)) nonFollowers.push(following);

console.log(nonFollowers.length)
console.log(nonFollowers)
