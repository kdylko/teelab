class OrderNotifier < ApplicationMailer
	default from: 'Teelab.ru <order@teelab.ru>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  # rails/mailers/notifier/
  def received(order)
    
    @order = Order.first
    @delivery = Delivery.all
    mail to: @order.email, subject: 'Заказ в Teelab.ru'
  end
end
