should = require('chai').should()
http = require 'http'

describe 'A http game server', ->
    it 'should be able to produce a response', (done) ->
        http.get "http://localhost:3000/", (res) ->
            res.statusCode.should.equal 200
            done()
    it 'should be Frank', (done) ->
        http.get "http://localhost:3000/?q=What%20is%20your%20name?", (res) ->
            res.on 'data', (chunk) ->
                chunk.toString().should.equal 'Frank'
                done()
                