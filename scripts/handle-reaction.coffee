#This script is inteded to run on a hubot with the slack adapter (hubot-slack)

#This script listens for a defined user to post a message, then automatically reacts to it

module.exports = (robot) ->

  console.log "------------------------------------"
  console.log "Listening for Vish to post something" #vish is the guy who we want to react to all of his messages
  console.log "------------------------------------"

  #this line will pass on messages to be processed that match a certain reges expression
  robot.hear /./i, (res) -> # '/./i' is regex for 'all characters, 

    #The two commented out lines below were used to read the contents of the 'res' object 
    #The 'res' object contains ALL the info related to a message... which is a lot more than expected

    #code from: https://stackoverflow.com/questions/26600600/how-to-get-all-values-of-object-via-coffeescript

    #values = (value for own prop, value of res)
    #console.log(values)
    
    if res.message.user.name == 'lilvish' #define the victims username here

      #info on the message posted by the victim 
      console.log "========================================"
      console.log "res.message: #{res.message}" #contents of the message that was posted
      console.log "res.message.user.name: #{res.message.user.name}" #users username, the one you '@'
      console.log "res.message.channel: #{res.message.room}" #room = channel
      console.log "res.message.id: #{res.message.id}" #id = timestamp (ts)
      console.log "========================================"

      #this line is the line that called the Slack web API and adds the reaction to the message
      robot.adapter.client.web.reactions.add('snake', {channel: res.message.room, timestamp: res.message.id}) #replace 'snake' with the emoji name of your chosing


    #you could copy and paste the big if statement above and add more users you want to listen for and 
    #automatically react to their messages