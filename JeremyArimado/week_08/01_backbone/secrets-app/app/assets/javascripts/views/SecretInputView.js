var app = app || {};

app.SecretInputView = Backbone.View.extend({

    events: {
        'click button' : 'createSecret',
        'keydown textarea' : 'checkForEnter'
    },


    checkForEnter: function (e) {
        app.ENTER_KEY = 13;
        if (e.which === app.ENTER_KEY) {
            e.preventDefault()
            this.createSecret();
        }
    },

    createSecret: function () {
        var textBoxVal = this.$el.find("textarea").val();
        console.log('clicked create secret with: ', textBoxVal);
        var newSecret = new app.Secret();
        newSecret.set('content', textBoxVal);

        // newSecret.set({
        //     content: textBoxVal
        // });
        //
        newSecret.save();
        app.secrets.add( newSecret );
        this.$el.find("textarea").val('').focus();

    },
    el: '#secretForm',
    render: function () {
        console.log("App view should be rendered now");
        var secretViewTemplate = $("#secretInputViewTemplate").html();
        this.$el.html( secretViewTemplate );
    }
});
