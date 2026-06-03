package net.yahya.ecommerce.payment;

import lombok.RequiredArgsConstructor;
import net.yahya.ecommerce.notification.NotificationProducer;
import net.yahya.ecommerce.notification.PaymentNotificationRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PaymentService {

    private final PaymentRepository repository;
    private final PaymentMapper mapper;
    private final NotificationProducer producer;

    public Integer createPayment(PaymentRequest request) {
        var payment = this.repository.save(mapper.toPayment(request));

        this.producer.sendNotification(
                new PaymentNotificationRequest(
                        request.orderReference(),
                        request.amount(),
                        request.paymentMethod(),
                        request.customer().firstname(),
                        request.customer().lastname(),
                        request.customer().email()
                )
        );
        return payment.getId();
    }
}
