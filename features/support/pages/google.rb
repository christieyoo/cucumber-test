class GoogleHomePage
	include Capybara::DSL

  def enter_search(search_term)
		page.find_field('q').send_keys search_term, :return
  end

  def verify_page
		page.assert_selector 'div#main'
  end
end

class GoogleResultsPage
	include Capybara::DSL
	
  def verify_page
		page.assert_selector 'div#rcnt'
  end
end
