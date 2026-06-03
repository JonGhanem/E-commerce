package net.yahya.ecommerce.email;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.yahya.ecommerce.kafka.order.Product;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring6.SpringTemplateEngine;

import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class EmailService {

    private final JavaMailSender mailSender;
    private final SpringTemplateEngine templateEngine;

    @Async
    public void sendPaymentSuccessEmail(
            String destinationEmail,
            String customerName,
            BigDecimal amount,
            String orderReference
    ) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED, StandardCharsets.UTF_8.name());
            messageHelper.setFrom("contact@yahya-ecommerce.net");

            final String templateName = EmailTemplates.PAYMENT_CONFIRMATION.getTemplate();

            Map<String, Object> properties = new HashMap<>();
            properties.put("customerName", customerName);
            properties.put("amount", amount);
            properties.put("orderReference", orderReference);

            Context context = new Context();
            context.setVariables(properties);
            messageHelper.setSubject(EmailTemplates.PAYMENT_CONFIRMATION.getSubject());

            String htmlTemplate = templateEngine.process(templateName, context);
            messageHelper.setText(htmlTemplate, true);

            messageHelper.setTo(destinationEmail);
            mailSender.send(mimeMessage);
            log.info("Email successfully sent to {} with template {}", destinationEmail, templateName);
        } catch (MessagingException e) {
            log.warn("WARNING - Cannot send Email to {} ", destinationEmail);
        }
    }

    @Async
    public void sendOrderConfirmationEmail(
            String destinationEmail,
            String customerName,
            BigDecimal amount,
            String orderReference,
            List<Product> products
    ) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED, StandardCharsets.UTF_8.name());
            messageHelper.setFrom("contact@yahya-ecommerce.net");

            final String templateName = EmailTemplates.ORDER_CONFIRMATION.getTemplate();

            Map<String, Object> properties = new HashMap<>();
            properties.put("customerName", customerName);
            properties.put("totalAmount", amount);
            properties.put("orderReference", orderReference);
            properties.put("products", products);

            Context context = new Context();
            context.setVariables(properties);
            messageHelper.setSubject(EmailTemplates.ORDER_CONFIRMATION.getSubject());

            String htmlTemplate = templateEngine.process(templateName, context);
            messageHelper.setText(htmlTemplate, true);

            messageHelper.setTo(destinationEmail);
            mailSender.send(mimeMessage);
            log.info("Email successfully sent to {} with template {}", destinationEmail, templateName);
        } catch (MessagingException e) {
            log.warn("WARNING - Cannot send Email to {} ", destinationEmail);
        }
    }
}
