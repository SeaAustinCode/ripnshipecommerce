/*
 * package com.austin.ripnshipecommerce.controllers;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.austin.ripnshipecommerce.entity.ChargeRequest;
 * 
 * import lombok.Value;
 * 
 * @Controller public class CheckoutController {
 * 
 * @Value("${stripeApiKey}") private String stripePublicKey;
 * 
 * @RequestMapping("/checkout") public String checkout(Model model) {
 * model.addAttribute("amount", 50 * 100); // in cents
 * model.addAttribute("stripePublicKey", stripePublicKey);
 * model.addAttribute("currency", ChargeRequest.Currency.USD); return
 * "checkout"; } }
 */