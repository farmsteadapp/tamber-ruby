require File.expand_path('../test_helper', __FILE__)

module Tamber
  class UserTest < Test::Unit::TestCase

    should "create user" do
      begin
        u = Tamber::User.create(
          :id => 'user_jctzgisbru',
          :events => [
            {
              :item => 'item_u9nlytt3w5',
              :behavior => 'like'
            },
            {
              :item => 'item_i5gq90scc1',
              :behavior => 'like'
            }
          ]
        )
      end
    end

    should "users should be able to be updated" do
      begin
        id = 'user_jctzgisbru'
        metadata = {
          'name' => 'Rob Pike',
          'city' => 'Mountain View, CA'
        }
        u = Tamber::User.update(
          :id => id,
          :metadata => metadata
        )
        puts "retrieved user #{u}"
        assert u.id == id
      end
    end


    should "retrieve user" do
      begin
        id = 'user_jctzgisbru'
        u = Tamber::User.retrieve(
          :id => id,
          :get_recs => {
            :number => 10
          }
        )
        puts u.inspect
        puts u.metadata
        assert u.id == id
      end
    end

  end
end
