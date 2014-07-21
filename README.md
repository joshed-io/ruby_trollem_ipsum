### ruby_trollem_ipsum

A simple, configurable API client for [trollemipsum.appspot.com](http://trollemipsum.appspot.com).

### Usage

First, require the library:

    require 'ruby_trollem_ipsum'

One-liner:

    TrollemIpsum.lorem    # => "Flash sucks, during delay in getting Ice Cream Sandwich what gorgeous."

Filter options per client:

    troll = TrollemIpsum.new(["confident"], ["siegler"])
    troll.lorem  # => "It’s not good for Google I believe fingergate finally pure bullshit..."

Filter options per call:

    troll = TrollemIpsum.new
    troll.lorem("gruber")  # => "Steve Jobs in my opinion baseball."

### Installation

Rubygems:

    gem install ruby_trollem_ipsum

Bundler:

    gem 'ruby_trollem_ipsum'

### Options

The `TrollemIpsum` constructor takes 2 optional parameters - an array of allowable lengths and one of types. See the TrollemIpsum [API](http://trollemipsum.appspot.com/api.json?type=apple&length=new) for a list of allowed values.

If you pass these options, future calls to `lorem` will use them to scope the random selection of types and lengths.

Each call to `lorem` may also pass a length and a type which will override the scoping set on initialization.

### Error messages

*Reason*: All the reasons

*Message*:

    trololololololololol

### Credits

Thanks to [@davidmoss](https://twitter.com/davidmoss) and [@patrickhmason](https://twitter.com/patrickhmason) for creating TrollemIpsum!

### Follow me

Follow [@dzello](https://twitter.com/dzello) on twitter for MORE updates and LESS trolling.

