@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de proyección factura'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZAV_C_INVOICE 
    provider contract transactional_query
    as projection on ZAV_R_INVOICE
{
    key InvoiceId,
    CustomerId,
    InvoiceDate,
    CurrencyCode,
    PaymentMethod,
    TotalAmount,
    Status,
    Description,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Item : redirected to composition child ZAV_C_ITEM
}
