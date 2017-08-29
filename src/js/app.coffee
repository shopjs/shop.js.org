# Shop.js works with only zepto fallback as well
# import $ from './zepto'
import { initShop, getMediator } from './shop'
import { initPrism } from './prism'

$document = $(document)
$document.ready ->
  initPrism()
  Shop = initShop()

  m = getMediator()

  window.m = m

  Shop.setItem 'red-shirt', 1
  Shop.setItem 'green-shirt', 2

