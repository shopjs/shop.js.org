import Shop from 'shop.js/src'
import store from 'akasha'

m

export initShop = ->
  window.Shop = Shop

  settings =
    # test
    key: 'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJiaXQiOjQ1MDM2MTcwNzU2NzUxNzYsImp0aSI6IlJiVnlrOUUtdEhrIiwic3ViIjoiRXFUR294cDV1MyJ9.y6ydj8Sq2ME1-9itCCQaku2b6ta0yjuNfdD7_qC7-caa095ZHBjZ8c_ugMJiRrOr6z3z5RK1G0p7mt23tZMN6A'
    # key: 'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJiaXQiOjQ1MDM2MTcwNzU2NzUxNzYsImp0aSI6IkNTaWFDckhpdDQ0Iiwic3ViIjoiRXFUR294cDV1MyJ9.fRcRQRRe0CrcnGSW12fmQ_8Cly6mqByIc5wTnANPdPWP3V1Bx9AIGbTVPTx_3KbBEziGewKJtNT1ys6WDXegyg'

  m = window.m = Shop.start(settings)
  window.client = Shop.client

  return Shop

export getMediator = ->
  return m

