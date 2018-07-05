with source as (

    select * from zuora_tap.invoiceitem

),

renamed as (

    select

        id as invoice_item_id,
        accountid as account_id,
        invoiceid as invoice_id,
        parentaccountid as parent_account_id,
        subscriptionid as subscription_id,
        rateplanchargeid as rate_plan_charge_id,
        rateplanid as rate_plan_id,
        amendmentid as amendment_id,
        productid as product_id,
        productrateplanid as product_rate_plan_id,
        productrateplanchargeid as product_rate_plan_charge_id,
        appliedtoinvoiceitemid as applied_to_invoice_item_id,

        sku,
        quantity,
        servicestartdate::date as service_start_date,
        dateadd(day, 1, serviceenddate)::date as service_end_date,
        taxamount as tax_amount,
        taxexemptamount as tax_exempt_amount,
        unitprice as unit_price,

        chargeamount as charge_amount,
        chargedate as charge_date,
        chargename as charge_name,

        accountingcode as accounting_code,
        accountingperiodid as accounting_period_id,
        accountreceivableaccountingcodeid as account_receivable_accounting_code_id,
        deferredrevenueaccountingcodeid as deferred_revenue_accounting_code_id,
        journalentryid as journal_entry_id,
        journalrunid as journal_run_id,
        recognizedrevenueaccountingcodeid as recognized_revenue_accounting_code_id,

        billtocontactid as bill_to_contact_id,
        soldtocontactid as sold_to_contact_id,
        defaultpaymentmethodid as default_payment_method_id,
        processingtype as processing_type,
        taxcode as tax_code,
        taxmode as tax_mode,
        uom,
        deleted,

        createdbyid as created_by_id,
        createddate as created_at,
        updatedbyid as updated_by_id,
        updateddate as updated_date

    from source

)

select * from renamed
