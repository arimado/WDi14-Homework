var app = app || {};

app.Secrets = Backbone.Collection.extend({
    url: "/secrets",
    model: app.Secret,
    initialize: function () {
        console.log("new secrets collection");

        this.on('add', function(secret) {
            // console.log(secret.toJSON())
            var secretView = new app.SecretView({
                model: secret
            });
            secretView.render();
        });

    }
})
