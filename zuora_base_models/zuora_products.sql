with source as (

    select * from zuora_stitch_schema.product

),

renamed as (

    select

        id as product_id,
        name,
        sku,
        description,
        category,
        effectiveenddate::date as effective_end_date,
        effectivestartdate::date as effective_start_date,
        deleted,

        createdbyid as created_by_id,
        createddate as created_at,
        updatedbyid as updated_by_id,
        updateddate as updated_date

    from source

)

select * from renamed
