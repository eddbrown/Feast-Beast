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
  fill_in('Address', with: 'London')
  click_button('Create Feast')
end

def create_review
  click_link "Review test"
  fill_in 'Thoughts', with: 'solid'
  select '5', from: 'Rating'
  click_button 'Leave Review'
end

def create_review2
  click_link "Review test"
  fill_in 'Thoughts', with: 'solid2'
  select '5', from: 'Rating'
  click_button 'Leave Review'
end