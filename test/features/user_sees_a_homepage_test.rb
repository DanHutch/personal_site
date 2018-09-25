## user_sees_a_homepage_test.rb

require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_case_statement_returns_properly
    visit '/'
    assert(page.has_content?("Welcome!"))
    assert_equal(200, page.status_code)

    visit '/sadpath'
    assert(page.has_content?("Page not found."))
    assert_equal(404, page.status_code)

    visit '/about'
    assert(page.has_content?("About Me!"))
    assert(page.has_content?("Here's some stuff to know."))
    assert_equal(200, page.status_code)
  end

  
end
