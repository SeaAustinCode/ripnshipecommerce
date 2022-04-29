package com.austin.ripnshipecommerce.entity;

import lombok.Data;

@Data public class ChargeRequest {

public enum Currency { USD; }

private String description; private int amount; private Currency currency;
private String stripeEmail; private String stripeToken; }
