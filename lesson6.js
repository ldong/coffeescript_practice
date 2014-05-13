var counter = {
  count: 0,
  inc: function(){
    return this.count++;
  }
}

console.log(counter.inc());
console.log(counter.inc());
console.log(counter.inc());

var inc = counter.inc;
console.log(inc.call(counter));
console.log(inc.call({count : 10}));

var courseTopic = 'CoffeeScript'
console.log(courseTopic);
console.log(this.courseTopic);
console.log(window.courseTopic);
