@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view entity ZAV_R_ITEM'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAV_R_ITEM as select from zav_item
association to parent ZAV_R_INVOICE as _Invoice
    on $projection.InvoiceId = _Invoice.InvoiceId
{
    key invoice_id as InvoiceId,
    key item_id as ItemId,
    product_id as ProductId,
    description as Description,
    quantity as Quantity,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    unit_price as UnitPrice,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    item_amount as ItemAmount,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.localInstanceLastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    
    _Invoice
}
