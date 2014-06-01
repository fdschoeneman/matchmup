Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]


# Minitest::Reporters::DefaultReporter  # => Redgreen-capable version of standard Minitest reporter
# Minitest::Reporters::SpecReporter     # => Turn-like output that reads like a spec
# Minitest::Reporters::ProgressReporter # => Fuubar-like output with a progress bar
# Minitest::Reporters::RubyMateReporter # => Simple reporter designed for RubyMate
# Minitest::Reporters::RubyMineReporter # => Reporter designed for RubyMine IDE and TeamCity CI server
# Minitest::Reporters::JUnitReporter    # => JUnit test reporter designed for JetBrains TeamCity