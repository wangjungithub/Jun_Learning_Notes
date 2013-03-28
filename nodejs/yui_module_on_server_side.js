//YUI = require('yui').YUI({modules:{
//    "mytest-io":{
//        fullpath:__dirname + "./mytest-io.js",
//        requires:['io-base']
//    }
//}}).use('mytest-io');


YUI = require('yui').YUI;

YUI.add('mytest-io', function (Y, NAME) {
    Y.namespace("MyTest");

    var MyIO = function() {};

    MyIO.prototype.connect = function(url) {
        Y.io(url, {
            method: 'GET',
            request: {
                followAllRedirects: true
            },
            on: {
                complete: function (id, response) {
                    console.log("complete: " + id);
                    console.dir(response);
                },
                failure: function (id, response) {
                    console.log("failure: " + id);
                    console.dir(response);
                }
            }
        });
    }

    Y.MyTest.MyIO = MyIO;

}, "0.1", {requires:['io-base']});

YUI().use('mytest-io', function (Y, NAME) {
    var myIO = new Y.MyTest.MyIO();
    myIO.connect("http://www.yahoo.com");
});


