RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Theresa', email: 'Theresa@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
  end

  it 'name should be present' do
    expect(@user.name).to eq('Theresa')
  end

  it 'email should be present' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'password should be present' do
    @user.password = nil
    expect(@user).to_not be_valid
  end
end
