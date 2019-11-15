# frozen_string_literal: true

require_relative "../lib/adaptors/onix/v3/reference"
require "nokogiri"
require "byebug"

RSpec.describe Adaptors::Onix::V3::Reference do
  subject do
    described_class.new(doc)
  end

  let(:doc) do
    doc = Nokogiri::XML(File.open("fixtures/snowbooks.xml"))
    doc.remove_namespaces!
  end

  it "returns the right number of products" do
    expect(subject.products("").count).to eq(0)
  end

  context "with non-unique titles" do
    let(:doc) do
      doc = Nokogiri::XML(File.open("fixtures/multiple.xml"))
      doc.remove_namespaces!
    end

    it "returns the right number of products" do
      expect(subject.products("").count).to eq(0)
    end
  end
end
