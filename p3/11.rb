Each gem has a name, version, and platform. For example, the rake gem has a 13.0.6 version (from Jul 2021). Rake’s platform is ruby, which means it works on any platform Ruby runs on.

Platforms are based on the CPU architecture, operating system type and sometimes the operating system version. Examples include “x86-mingw32” or “java”. The platform indicates the gem only works with a ruby built for the same platform.

Inside gems are the following components:

Code (including tests and supporting utilities)
Documentation
gemspec
Each gem follows the same standard structure of code organization:

% tree freewill
freewill/
├── bin/
│   └── freewill
├── lib/
│   └── freewill.rb
├── test/
│   └── test_freewill.rb
├── README
├── Rakefile
└── freewill.gemspec
Here, you can see the major components of a gem:

The lib directory contains the code for the gem
The test or spec directory contains tests, depending on which test framework the developer uses
A gem usually has a Rakefile, which the rake program uses to automate tests, generate code, and perform other tasks.
This gem also includes an executable file in the bin directory, which will be loaded into the user’s PATH when the gem is installed.
Documentation is usually included in the README and inline with the code. When you install a gem, documentation is generated automatically for you. Most gems include RDoc documentation, but some use YARD docs instead.
The final piece is the gemspec, which contains information about the gem. The gem’s files, test information, platform, version number and more are all laid out here along with the author’s email and name.
