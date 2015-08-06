define ->
  eu = ElzupUtils
  class DomManager
    @addPlayerDom: (player) ->
      $playerElem = ($ '<p/>').attr
        user_id: player.id
        class: 'player'
      $i = ($ '<i/>').addClass('fa')
      switch (player.ua)
        when eu.userAgent.android
          $i.addClass('fa-android')
        when eu.userAgent.iphone
          $i.addClass('fa-apple')
        else
          $i.addClass('fa-desktop')
      $delI = ($ '<i/>').addClass('fa fa-minus')
      $delBtn = ($ '<button/>').addClass('del-btn').append($delI)
      $delBtn.click ->
        game.removePlayer(player.id)
      $playerElem.append($i)
      $name = ($ '<span/>').addClass('name').html(player.id.substr(0, 8))
      $playerElem.append($i).append($name).append($delBtn)
      ($ ".team-box[team=#{player.team}]").append($playerElem)

    @updatePlayerDom: (player) ->
      pElem = ($ ".player[user_id=#{player.id}]")

    @removePlayerDom: (player) ->
      ($ ".player[user_id=#{player.id}]").remove()
  return DomManager