def sign_up
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def sign_up2
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: 'test2@example.com')
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def create_feast
  click_link('Add a feast')
  fill_in('Name', with: 'test')
  fill_in('Description', with: 'test')
  click_button('Create Feast')
end

def create_feast_with_address
  click_link('Add a feast')
  fill_in('Name', with: 'test')
  fill_in('Description', with: 'test')
  fill_in('Address', with: 'E2 8DP')
  click_button('Create Feast')
end

def leave_review(thoughts, rating)
  visit '/feasts'
  click_link 'Review test'
  fill_in 'Thoughts', with: thoughts
  select rating, from: 'Rating'
  click_button 'Leave Review'
end

def create_feast_with_image
  click_link('Add a feast')
  fill_in('Name', with: 'test')
  fill_in('Description', with: 'test')
  attach_file 'Image', 'spec/features/image_bank/pic.png'
  click_button('Create Feast')
end
