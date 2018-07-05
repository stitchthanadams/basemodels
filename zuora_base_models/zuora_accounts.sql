with source as (

    select * from zuora_schema.account

),

renamed as (

    select
        id as account_id,
        name,
        accountnumber as account_number,
        rjmetricsaccountnumber__c as rjm_cid,
        crmid as crm_id,
        parentaccountid as parent_account_id,

        balance,
        creditbalance as credit_balance,
        status,

        autopay,
        billcycleday as bill_cycle_day,
        communicationprofileid as communication_profile_id,
        currency,
        defaultpaymentmethodid as default_payment_method_id,
        lastinvoicedate::date as last_invoice_date,
        mrr,
        paymentterm as payment_term,
        billtocontactid as bill_to_contact_id,
        soldtocontactid as sold_to_contact_id,
        totaldebitmemobalance as total_debit_memo_balance,
        totalinvoicebalance as total_invoice_balance,
        unappliedbalance as unapplied_balance,
        unappliedcreditmemoamount as unapplied_credit_memo_amount,
        vatid as vat_id,
        deleted,

        createdbyid as created_by_id,
        createddate as created_at,
        updatedbyid as updated_by_id,
        updateddate as updated_date

    from source

)

select * from renamed
