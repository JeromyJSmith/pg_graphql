begin;

    -- functions accepting arrays
    create function get_smallint_array_item(arr smallint[], i int)
        returns smallint language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getSmallintArrayItem(arr: [1, 2, 3], i: 1)
        }
    $$));

    create function get_int_array_item(arr int[], i int)
        returns int language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getIntArrayItem(arr: [1, 2, 3], i: 2)
        }
    $$));

    create function get_bigint_array_item(arr bigint[], i int)
        returns bigint language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getBigintArrayItem(arr: ["1", "2", "3"], i: 3)
        }
    $$));

    create function get_real_array_item(arr real[], i int)
        returns real language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getRealArrayItem(arr: [1.1, 2.2, 3.3], i: 1)
        }
    $$));

    create function get_double_array_item(arr double precision[], i int)
        returns double precision language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getDoubleArrayItem(arr: [1.1, 2.2, 3.3], i: 2)
        }
    $$));

    create function get_numeric_array_item(arr numeric[], i int)
        returns numeric language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getNumericArrayItem(arr: ["1.1", "2.2", "3.3"], i: 3)
        }
    $$));

    create function get_bool_array_item(arr bool[], i int)
        returns bool language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getBoolArrayItem(arr: [true, false], i: 2)
        }
    $$));

    create function get_uuid_array_item(arr uuid[], i int)
        returns uuid language sql stable
    as $$ select arr[i]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            getUuidArrayItem(arr: ["e8dc3a9a-2c72-11ee-b094-776acede6790", "d3ef3a8c-2c72-11ee-b094-776acede7221"], i: 2)
        }
    $$));

    -- functions returning arrays
    create function returns_smallint_array()
        returns smallint[] language sql stable
    as $$ select '{1, 2, 3}'::smallint[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsSmallintArray
        }
    $$));

    create function returns_int_array()
        returns int[] language sql stable
    as $$ select '{1, 2, 3}'::int[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsIntArray
        }
    $$));

    create function returns_bigint_array()
        returns bigint[] language sql stable
    as $$ select '{1, 2, 3}'::bigint[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsBigintArray
        }
    $$));

    create function returns_real_array()
        returns real[] language sql stable
    as $$ select '{1.1, 2.2, 3.3}'::real[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsRealArray
        }
    $$));

    create function returns_double_array()
        returns double precision[] language sql stable
    as $$ select '{1.1, 2.2, 3.3}'::double precision[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsDoubleArray
        }
    $$));

    create function returns_numeric_array()
        returns numeric[] language sql stable
    as $$ select '{1.1, 2.2, 3.3}'::numeric[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsNumericArray
        }
    $$));

    create function returns_bool_array()
        returns bool[] language sql stable
    as $$ select '{true, false}'::bool[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsBoolArray
        }
    $$));

    create function returns_uuid_array()
        returns uuid[] language sql stable
    as $$ select '{"e8dc3a9a-2c72-11ee-b094-776acede6790", "d3ef3a8c-2c72-11ee-b094-776acede7221"}'::uuid[]; $$;

    select jsonb_pretty(graphql.resolve($$
        query {
            returnsUuidArray
        }
    $$));

rollback;
