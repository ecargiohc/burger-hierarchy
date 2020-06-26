class BurgerJoint < ApplicationRecord
    has_many :reviews

    # this slugifies the names of the burgerjoints before creating it in our db:
    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
