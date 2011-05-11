## Install, quickly

Copy & Paste this line into your terminal:

    curl -L http://xrl.us/perlbrewinstall | bash

This installer installers everything to your `~/perl5/perlbrew`, for more advanced installation,
please read [the perlbrew document](http://beta.metacpan.org/module/App::perlbrew).

## What is perlbrew

perlbrew is a tool to manage multiple perl installations in your
`$HOME` directory. They are completely isolated perl universes, with
the benefits of not having to run `sudo` just to install CPAN modules,
and more, for examples

- Leave vendor perl alone
- Try the monthly released new perl
- Learn new perl5 language features
- Test production code against new perl

## perlbrew is simple

Daily usage looks like:

    # Install new releases
    perlbrew install perl-5.14.0-RC1
    perlbrew install perl-5.12.3
   
    # Play with it
    perlbrew use perl-5.14.0-RC1

    # Maybe use a stable one for real work
    perlbrew switch perl-5.12.3

    # Run myprogram.pl against ALL your perl installaitons
    perlbrew exec myprogram.pl

## Development

perlbrew has always been improving, it is a open source project for
you to participate.  There are currently over [30
contributors](https://github.com/gugod/App-perlbrew/contributors) and
growing.
The code repository is located on [github](https://github.com/gugod/App-perlbrew).
Feel free to send a bug report, a pull request, or anything. Event a beer can help :)
