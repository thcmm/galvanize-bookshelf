/* ASK MATT ABOUT THIS */
var multiline = require('multiline');

exports.up = function(knex, Promise) {

    var sql = multiline.stripIndent(function() {
    CREATE TABLE books (
        ID SERIAL PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        author VARCHAR(255) NOT NULL,
        genre INTEGER(255) NOT NULL,
        description TEXT NOT NULL,
        cover_url TEXT NOT NULL
        );
    });
    return knex.schema.raw(sql);

};
exports.down = function(knex, Promise) {
    return knex.schema.raw('DROP TABLE states;');
};
