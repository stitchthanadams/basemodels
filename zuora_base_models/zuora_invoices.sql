with source as (

    select * from zuora_tap.invoice

),

renamed as (

    select

        id as invoice_id,
        accountid as account_id,
        parentaccountid as parent_account_id,

        amount,
        balance,
        adjustmentamount as adjustment_amount,
        refundamount as refund_amount,
        taxamount,
        taxexemptamount,
        paymentamount as payment_amount,
        amountwithouttax as amount_without_tax,
        creditbalanceadjustmentamount as credit_balance_adjustment_amount,

        invoicedate::date as invoice_date,
        duedate::date as due_date,
        targetdate::date as target_date,
        posteddate as posted_date,

        billtocontactid as bill_to_contact_id,
        soldtocontactid as sold_to_contact_id,

        invoicenumber as invoice_number,
        postedby as posted_by,
        autopay,
        defaultpaymentmethodid as default_payment_method_id,
        source,
        sourceid as source_id,
        status,
        deleted,

        includesonetime as includes_one_time,
        includesrecurring as includes_recurring,
        includesusage as includes_usage,

        createdbyid as created_by_id,
        createddate as created_at,
        updatedbyid as updated_by_id,
        updateddate as updated_date

    from source

)

select * from renamed
