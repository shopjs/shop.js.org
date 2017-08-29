import $ from 'zepto-modules/_default'
import 'zepto-modules/selector'

['width', 'height'].forEach (dimension)->
  Dimension = dimension.replace /./, (m)-> return m[0].toUpperCase()
  $.fn['outer' + Dimension] = (margin)->
    elem = this
    if elem
      size = elem[dimension]()
      sides =
        width: ['left', 'right']
        height: ['top', 'bottom']
      sides[dimension].forEach (side)->
        if margin
          size += parseInt elem.css('margin-' + side), 10
      return size
    else
      return null

window.$ = $ if !window.$?

export default $
