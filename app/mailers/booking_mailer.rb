class BookingMailer < ApplicationMailer
    default from: 'luis@codecandy.io'

    def new_request(booking_params)
        @tattoo_request = booking_params
        mail(to: "zez608@gmail.com",, subject: "New Tattoo Request")
    end

end
