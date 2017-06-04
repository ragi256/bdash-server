require 'rails_helper'

RSpec.describe Query do
  describe '#star_by' do
    let (:query) { FactoryGirl.create(:query) }
    let (:user) { FactoryGirl.create(:user) }

    it do
      expect { query.star_by!(user) }.to change { Star.count }.from(0).to(1)
    end
  end

  describe '#unstar_by' do
    let (:query) { FactoryGirl.create(:query) }
    let (:user) { FactoryGirl.create(:user) }

    before { query.star_by!(user) }

    it do
      expect { query.unstar_by!(user) }.to change { Star.count }.from(1).to(0)
    end
  end

  describe '#starred_by' do
    let (:query) { FactoryGirl.create(:query) }
    let (:user) { FactoryGirl.create(:user) }

    before { query.star_by!(user) }

    subject { query.starred_by?(user) }

    it { should be true }
  end
end
