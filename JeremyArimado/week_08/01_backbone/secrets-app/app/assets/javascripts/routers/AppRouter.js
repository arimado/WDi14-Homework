var app = app || {};

app.AppRouter = Backbone.Router.extend({
    routes: {
        '': 'index'
    },
    index: function () {
        console.log('index run');
        var appView = new app.AppView();
        appView.render();
    
    }
});
