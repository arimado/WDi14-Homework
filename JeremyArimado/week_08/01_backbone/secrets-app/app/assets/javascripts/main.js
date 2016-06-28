// var s1 = new app.Secret();
// var s2 = new app.Secret({
//     content: "I put bleach in your coffee"
// });
// var secretsCollection = new app.Secrets([s1, s2])


// var secretsCollection = new app.Secrets();
//     secretsCollection.fetch().done((data) => {
//         console.log(data)
//
//         var bleachSecret = secretsCollection.findWhere({
//             id: 1
//         });
//
//         bleachSecret.set({
//             content: "I put bleach in your coffee"
//         })
//
//         bleachSecret.save().done(() => {
//             console.log('Bleach secret was saved');
//         })
// })




app.secrets = new app.Secrets();

$(document).ready(function() {

    app.router = new app.AppRouter();
    Backbone.history.start();

    app.secrets.fetch().done((data) => {})

    window.setInterval(function() {
        app.secrets.fetch();
    }, 3000);

})
