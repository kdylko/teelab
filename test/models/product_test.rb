require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	test "product attributes must not be empty" do

	# свойства товара не должны оставаться пустыми product = Product.new
	assert product.invalid?
	assert product.errors[:title].any?
	assert product.errors[:description].any? 
	assert product.errors[:price].any?
	assert product.errors[:url_name].any?
	end

	test "product price must be positive" do
	# цена товара должна быть положительной
	product = Product.new(title: "My Book Title",
                        description: "yyy",
                        url_name:     "zzz")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 900.00"],
    product.errors[:price]
          # должна быть больше или равна 0.01
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 900.00"],
        product.errors[:price]
    product.price = 1
    assert product.valid?
end

end
