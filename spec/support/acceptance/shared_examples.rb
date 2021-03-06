
shared_examples 'common header' do

  scenario 'has a common header for all sections' do

    within 'header' do
      page.should have_css 'a#logo img'
      page.should have_link 'Other WRI sites'
    end

  end

end

shared_examples 'title' do |title|

  scenario 'has a title' do

    within 'header' do
      page.should have_css 'h1', :text => title
    end

  end

end

shared_examples 'menu' do

  scenario 'has a navigation menu' do

    within 'header' do
      page.should have_link 'Global Forest Watch 2.0'
    end

    within 'header nav' do
      page.should have_css 'ul li a', :text => 'Home'
      page.should have_css 'ul li a', :text => 'Countries'
      page.should have_css 'ul li a', :text => 'Map'
      page.should have_css 'ul li a', :text => 'Blog'
      page.should have_css 'ul li a', :text => 'Data Sources'
      page.should have_css 'ul li a', :text => 'About'
    end

  end

end

shared_examples 'filters' do 
  scenario 'shows a menu with filters for the map' do
    within '#map_container .filters' do
      ['concessions', 'protected areas', 'intact forest', 'mining', 'forest cover', 'forest', 'fire', 'carbon', 'biodiversity'].each do |filter_name|
        page.should have_css 'li a', :text => filter_name
      end
    end
  end
end

shared_examples 'download section' do

  scenario 'has a download section' do

    within 'footer .download' do
      page.should have_content "I'm interested in forest clearing data for write here."
      page.should have_content 'You can also download all our data in a .zip file.'
      page.should have_link 'write here'
      page.should have_link 'download all our data'
    end

  end

end

shared_examples 'common footer' do

  scenario 'has a common footer for all sections' do

    within 'footer .links' do

      page.should have_css 'a.google img'
      page.should have_css 'a.cfgd img'
      page.should have_css 'a.university_maryland img'
      page.should have_css 'a.imazon img'

      within '.wri' do

        page.should have_link 'wri'

        within '.address' do
          page.should have_content '10 G Street NE Suite 800, Washington, DC 20002,'
          page.should have_content 'USA / Phone +1 (202) 729-7600 / Fax +1 (202) 729-7610'
        end

      end

    end

  end

end


