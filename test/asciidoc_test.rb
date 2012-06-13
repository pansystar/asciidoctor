require 'test_helper'

class ProjectTest < Test::Unit::TestCase
  # setup for test
  def setup
    @doc = Asciidoc::Document.new(File.readlines(sample_doc_path(:asciidoc_index)))
  end

  def test_title
    assert_equal "AsciiDoc Home Page", @doc.title
  end

  def test_is_section_heading
    assert @doc.send(:is_section_heading?, "AsciiDoc Home Page", "==================")
    assert @doc.send(:is_section_heading?, "=== AsciiDoc Home Page")
  end

end
