select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from staging_BALBOA.dbt_test__audit.not_null_dim_dbt__models_manifest_model_id
    
      
    ) dbt_internal_test