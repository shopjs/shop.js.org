import Prism from 'prismjs'
import {} from 'prismjs/components/prism-bash.js'

export initPrism = ->
  examples =
    bootstrap:
      javascript: '''
        import Shop from 'shop.js';
        window.Shop = Shop;
        window.m = Shop.start({ key: '<your key here>' });
      '''

    example1:
      html: '''
        <script>
          var images = {
            'red-shirt': '/img/red.png',
            'green-shirt': '/img/green.png',
          };

          var addRedShirt = function() {
            Shop.setItem('red-shirt', Shop.getItem('red-shirt').quantity + 1)
            return false
          };

          var addGreenShirt = function() {
            Shop.setItem('green-shirt', Shop.getItem('green-shirt').quantity + 1)
            return false
          };

        </script>
        <cart images="{ images }"></cart>
        <button onclick="addRedShirt()">Add Red Shirt</button>
        <button onclick="addGreenShirt()">Add Green Shirt</button>
      '''

    example2:
      html: '''
        <checkout terms-url="/terms"></checkout>
      '''

    example3:
      html: '''
        <script>
          var images = {
            'red-shirt': '/img/red.png',
            'green-shirt': '/img/green.png',
          };

          var openCart = function() {
            window.m.trigger('side-pane-open', 'side-cart')
          }

        </script>
        <button onclick="openCart()">Open the Side Cart</button>
        <side-pane id="side-cart">
          <cart images="{ images }"></cart>
        </side-pane>
      '''

    example4:
      html: '''
        <script>
          var images = {
            'red-shirt': '/img/red.png',
            'green-shirt': '/img/green.png',
          };

          var openModal = function() {
            window.m.trigger('checkout-open', 'checkout')
          }

        </script>
        <button onclick="openModal()">Open the Checkout Modal</button>
        <checkout-modal id="checkout" images="{ images }">
          <div class="thankyou">
            <h2>Thank You!</h2>
          </div>
        </checkout-modal>
    '''

    install:
      bash: 'npm install shop.js'

  for clas, example of examples
    for lang, code of example
      html = Prism.highlight code, Prism.languages[lang]
      $('.' + clas + ' code').html(html).closest('pre').addClass('language-' + lang)
      break

