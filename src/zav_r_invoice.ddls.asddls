@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity ZAV_R_INVOICE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZAV_R_INVOICE as select from ZAV_INVOICE
composition [0..*] of ZAV_R_ITEM as _Item
{
    key invoice_id as InvoiceId,
    customer_id as CustomerId,
    invoice_date as InvoiceDate,
    currency_code as CurrencyCode,
    payment_metod as PaymentMetod,
    total_amount as TotalAmount,
    status as Status,
    description as Description,
    created_by as CreatedBy,
    created_at as CreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _Item
}
