NAME = 'Frank'

require('zappajs') ->
    @get '/': ->
        console.log "Q: #{@req.query.q} A: #{NAME}"
        NAME
