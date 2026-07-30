@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de proyección item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZAV_C_ITEM 
    as projection on ZAV_R_ITEM
{
    key InvoiceId,
    key ItemId,
    ProductId,
    Description,
    Quantity,
    CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    UnitPrice,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    ItemAmount,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Invoice : redirected to parent ZAV_C_INVOICE
}
