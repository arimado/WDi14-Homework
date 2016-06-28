var app = app || {}

app.SecretView = Backbone.View.extend({
    tagName: 'li',
    render: function () {

        console.log(this)
        var content = this.model.get('content');
        this.$el.text(content);
        this.$el.prependTo("#secrets")
    }
})
