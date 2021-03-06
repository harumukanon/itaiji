# itaiji

[![Build Status](https://travis-ci.org/camelmasa/itaiji.png)](https://travis-ci.org/camelmasa/itaiji)
[![Code Climate](https://codeclimate.com/github/camelmasa/itaiji.png)](https://codeclimate.com/github/camelmasa/itaiji)
[![Coverage Status](https://coveralls.io/repos/camelmasa/itaiji/badge.png?branch=master)](https://coveralls.io/r/camelmasa/itaiji?branch=master)


Convert japanese itaiji(異体字) to seijitai(正字体) and also reverse convert.
Instration
----------

Add this line to your application's Gemfile:

    gem 'itaiji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itaiji

Usage
-----

```
converter = Itaiji::Converter.new

converter.convert_seijitai('齊藤') # => '斉藤'
converter.convert_itaiji('斉藤')   # => '齊藤'
```

or

```
using Itaiji::Conversions

'齊藤'.to_seijitai # => '斉藤'
'斉藤'.to_itaiji   # => '齊藤'
```

(only ruby version >= 2.0.0)


Test
----

test command.

```
rake
```

Source
------
http://wwwap.hi.u-tokyo.ac.jp/ships/itaiji_list.jsp

Acknowledgement
------
Additions of characters made by harumukanon are partially based on The Definition Table for Kanji Unification Index developed by the National Institute of Informatics working together with Yasunori Wakayama of the Reitaku University Library.
