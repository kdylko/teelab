class OrderNotifier < ApplicationMailer
	default from: 'Sam Ruby <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @greeting = "Hi"

    mail to: order.email, subject: 'Подтверждение заказа в Teelab.ru'
  end
end
