import Prism from 'prismjs'

export initPrism = ->
  examples =
    example1:
      html: '''
        <script>
          window.images = {
            'red-shirt': '/img/red.png',
            'green-shirt': '/img/green.png',
          };

        </script>
        <cart images="{ images }"></cart>
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
        <button onclick="openCart()">Open the Cart</button>
        <side-pane id="side-cart">
          <cart images="{ images }"></cart>
        </side-pane>
      '''

  for clas, example of examples
    html = Prism.highlight example.html, Prism.languages.html
    $('.' + clas + ' code').html html

