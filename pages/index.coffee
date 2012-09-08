div '.reveal', ->
  div '.state-background', ''
  div '.slides', ->
    section ->
      h1 'Superman and Batman'
      p 'SHDD'
      small 'Sept 2012'
    section ->
      h1 'Rails and NodeJs'
      p 'SHDD'
      small 'Sept 2012'

    section ->
      section ->
        img src: 'http://supermanlogo.jpg.to'
        h2 'Rails'
        p 'What is superman known for?'
      section ->
        h1 'Super Powers'
        ul ->
          li 'Fly'
          li 'Super Strength'
          li 'Lasers'
      section ->
        h2 'Rails'
        h3 'Super Powers'
        ul ->
          li 'Convention over Configuration'
          li 'DRY: Dont Repeat Yourself'
          li 'MVC: Model-View-Controller'
      section ->
        h1 'Easy to'
        h2 'Install'
        h3 -> a href: 'http://railsinstaller.org', 'http://railsinstaller.org'
        h1 'Now'
      section ->
        h2 'Hello World'
        pre -> code contenteditable: true, '''
        rails new foo 
        cd foo
        rails g scaffold posts title body:text
        rake db:migrate
        rm public/index.html

        echo 'Foo::Application.routes.draw do' > config/routes.rb
        echo '  resources :posts' >> config/routes.rb
        echo '  root :to => "posts#index"' >> config/routes.rb
        echo 'end' >> config/routes.rb

        rails s
        '''
      section ->
        img src: 'http://supermanlogo.jpg.to'
        h2 'GTD: Get Things Done!'
      section ->
        img src: 'http://charlestoncodes.com/images/codecamp_logo.png'
        h2 -> a href: 'http://charlestoncodes.com/classes/rails-101.html', 'Rails 101'

    section ->
      section ->
        img src: 'http://batmanlogo.jpg.to', style: 'height: 40%'
        h2 'NodeJs'
        p 'What is batman known for?'
      section ->
        img src: 'http://batman-utilitybelt.jpg.to'
        h1 'The Toys'
      section ->
        h1 '&nbsp;'
        p 'What is NodeJs known for?'
      section -> img src: '/images/callbacks.png'
      section -> img src: '/images/callbackhell.png'
      section -> img src: '/images/eventsemitter.png'
      section -> img src: '/images/streams.png'
      #section -> img src: '/images/nodejs-nailed-it.png'
      section ->
        pre -> code contenteditable: true, '''
        mkdir tstream
        cd tstream
        npm init
        
        npm install ntwitter --save
        npm install nconf --save
        '''
      section ->
        pre -> code contenteditable: true, '''
        var twitter = require('ntwitter');
        var config = require('./config.js');

        var t = new twitter(config);

        t.stream(
          'statuses/filter',
          { track: ['shdd'] },
          function(stream) {
            stream.on('data', function(tweet) {
              console.log(tweet.text);
            });
          }
        );
        '''

      section ->
        pre -> code contenteditable: true, '''
        var twitter = require('ntwitter');
        var config = require('./config.js');
        var request = require('request');

        var t = new twitter(config);

        t.stream(
          'statuses/filter',
          { track: ['shdd'] },
          function(stream) {
            stream.on('data', function(tweet) {
              request.post('http://localhost:5984/tweets', {json: {tweet: tweet}});
            });
          }
        );
        '''
    section ->
      h1 'Thank You'
      p -> a href: 'http://twitter.com/twilson63', '@twilson63'
      img src: 'http://jackhq.com/images/jackhq-logo.png', style: 'padding: 20px;'

  aside '.controls', ->
    a '.left', href: '#', '&#x25C4;'
    a '.right', href: '#', '&#x25BA;'
    a '.up', href: '#', '&#x25B2;'
    a '.down', href: '#', '&#x25BC;'
  comment 'Presentation progress bar'
  div '.progress', ->
    span()