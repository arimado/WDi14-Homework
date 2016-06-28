

var Todo = Backbone.Model.extend({
    defaults: {
        title: '',
        completed: false
    },
    toggle: function() {
        this.save({
            completed: !this.get('completed'); // switches completed bool
        })
    }
});

var Todolist = Backbone.Collection.extend({
    model: Todo,
    localStorate: new Backbone.LocalStorage('todos-backbone'),
    completed: function() {
        return this.filter(function(todo) {

        })
    }
})
