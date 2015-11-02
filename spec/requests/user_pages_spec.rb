require 'spec_helper'
describe "User pages" do
subject {page}
describe "signup page" do
before {visit signup_path}
it { shoud have_content('Sign up')}
it { should have_title(full_title('Sign up'))}
end
end
