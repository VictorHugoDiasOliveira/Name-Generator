Gem::Specification.new do |spec|
    spec.name          = "name_generator"
    spec.version       = "0.1.1"
    spec.authors       = ["Victor Oliveira"]
    spec.email         = ["victorhugodias2001@gmail.com"]

    spec.summary       = %q{A simple library for generating names for testing purposes.}
    spec.description   = 'This gem generates random names.'
    spec.homepage      = "https://github.com/VictorHugoDiasOliveira/Name-Generator"
    spec.license       = "MIT"

    spec.files         = Dir["lib/**/*", "README.md", "LICENSE"]
    spec.bindir        = "bin"
    spec.executables   = []
    spec.require_paths = ["lib"]

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

    spec.post_install_message = "Thank you for installing Name-Generator!"
end