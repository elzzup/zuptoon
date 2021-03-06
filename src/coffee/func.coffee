
class @ElzupUtils
  # 第2, 3引数によって定義される範囲に固定される第1引数の値を計算する
  @clamp = (val, max, min=0, padding=0) ->
    Math.max(Math.min(max - padding, val), min + padding)

  @rand_range = (num) ->
    Math.floor(Math.random() * num)

  @vec_maguniture = (vx, vy) ->
    Math.sqrt(vx * vx + vy * vy)

  @get_parameters = ->
    query = window.location.search.substring(1)
    raw_vars = query.split("&")
    params = {}
    for v in raw_vars
      [key, val] = v.split("=")
      params[key] = decodeURIComponent(val)
    params

  @vec_vertical = (x, y)->
    t = Math.atan2(x, y)
    t += Math.PI / 2
    [Math.cos(t), Math.sin(t)]


