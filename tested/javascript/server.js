var express = require("express");

/* Reimplement this function to answer questions. */
var answer = function(question, req, res) {
    return "Nodecopter";
};

var app = express();

app.get("/", function(req, res) {
    var q = req.param("q");
    var a = answer(q, req, res);
    console.log("Q: \"" + q + "\" A:\"" + a + "\"");
    res.end(a);
});

app.listen(1337, "0.0.0.0");
console.log("Server running on http://0.0.0.0:1337/");