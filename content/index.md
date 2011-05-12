## Install, quickly

Copy & Paste this line into your terminal:

    curl -L http://xrl.us/perlbrewinstall | bash

This installs everything to `~/perl5/perlbrew`, for more advanced installation process,
please read [the perlbrew document](http://beta.metacpan.org/module/App::perlbrew).

## What is perlbrew

perlbrew is a tool to manage multiple perl installations in your
`$HOME` directory. They are completely isolated perl universes.
This approach has many benefits:

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

While the default is good enough, you may customize it to install to
alternative places, or even let multiple users share the whole
perlbrew environment.

## perlbrew is simple

To install the latest stable release, and use it permanently:

    perlbrew install perl-5.12.3
    perlbrew switch perl-5.12.3

To play with the latest RC version, but only in the current shell:

    perlbrew install perl-5.14.0-RC1
    perlbrew use perl-5.14.0-RC1

Runs `myprogram.pl` against all installations of perl, especially helpful when running tests:

    perlbrew exec myprogram.pl

For more descriptions about commands,

    perlbrew help

## Development

perlbrew has always been improving, it is a open source project for
everyone to participate. There are currently over
[30 contributors](https://github.com/gugod/App-perlbrew/contributors) and
growing.  The code repository is located on
[github](https://github.com/gugod/App-perlbrew). Feel free to send a
bug report, a pull request, or a bear. Everything helps :)
