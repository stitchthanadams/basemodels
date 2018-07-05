with source as (

    select * from zuora_tap.contact

),

renamed as (

    select

        id as contact_id,
        accountid as account_id,

        firstname as first_name,
        lastname as last_name,
        workemail as email,

        address1 as address_1,
        address2 as address_2,
        city,
        state,
        postalcode as zip,
        country,

        deleted,

        createdbyid as created_by_id,
        createddate as created_at,
        updatedbyid as updated_by_id,
        updateddate as updated_date

    from source

)

select * from renamed
