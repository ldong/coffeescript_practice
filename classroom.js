var classroom = {
    students: ['John', 'Jane', 'Jill', 'Joe'],
    print: function(){
        var self = this;
        function getName(i){
            // return this.students[i];
            return self.students[i];
        }

        for(var i=0; i< this.students.length; i++){
            console.log(getName(i));
        }
    }
}

classroom.print();
