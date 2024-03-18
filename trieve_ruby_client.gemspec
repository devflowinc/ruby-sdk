# -*- encoding: utf-8 -*-

=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.3.5
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "trieve_ruby_client/version"

Gem::Specification.new do |s|
  s.name        = "trieve_ruby_client"
  s.version     = TrieveRubyClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Trieve"]
  s.email       = ["developers@trieve.ai"]
  s.homepage    = "https://trieve.ai"
  s.summary     = "Trieve Ruby API client"
  s.description = "Ruby client for Trieve API generated from its OpenAPI specification using openapi-generator."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
