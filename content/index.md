## Install, quickly

Copy & Paste this line into your terminal:

    curl -L http://xrl.us/perlbrewinstall | bash

This installs everything to `~/perl5/perlbrew`, for more advanced installation process,
please read [the perlbrew document](http://beta.metacpan.org/module/App::perlbrew).

## What is perlbrew

perlbrew is a tool to manage multiple perl installations in your
`$HOME` directory. They are completely isolated perl universes, with
many benefits:

- No need to run `sudo` to install CPAN modules, any more.
- Try the monthly released new perls
- Learn new language features
- Test production code
- Leave vendor perl (the one that comes with OS) alone
  - Vendor perl usually has it's own purposes, any maybe a bad idea to mess it up too much.
  - Especially PITA when trying to upgrade system perl
  - Some vendors [introduced their own perl bugs](http://perlnews.org/2011/04/dealing-with-xcode-4-and-cpan-breakage/), [twice](http://www.theregister.co.uk/2009/02/16/apple_update_perl_breakage/)!
- Hacking perl internals
- Just to keep up with fashion

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
everyone to participate. There are currently over [30
contributors](https://github.com/gugod/App-perlbrew/contributors) and
growing.  The code repository is located on
[github](https://github.com/gugod/App-perlbrew). Feel free to send a
bug report, a pull request, or anything. Even a beer helps :)
