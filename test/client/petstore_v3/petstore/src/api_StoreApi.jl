# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct StoreApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

const _returntypes_delete_order = Dict{Regex,Type}(
    Regex("^" * replace("400", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("404", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_delete_order(_api::StoreApi, order_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "DELETE", _returntypes_delete_order, "/store/order/{orderId}", [])
    OpenAPI.Clients.set_param(_ctx.path, "orderId", order_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, [])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Delete purchase order by ID

For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors

Params:
- order_id::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function delete_order(_api::StoreApi, order_id::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_order(_api, order_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function delete_order(_api::StoreApi, response_stream::Channel, order_id::String; _mediaType=nothing)
    _ctx = _oacinternal_delete_order(_api, order_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_inventory = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Dict{String, Int64},
)

function _oacinternal_get_inventory(_api::StoreApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_inventory, "/store/inventory", ["api_key", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Returns pet inventories by status

Returns a map of status codes to quantities

Params:

Return: Dict{String, Int64}, OpenAPI.Clients.ApiResponse
"""
function get_inventory(_api::StoreApi; _mediaType=nothing)
    _ctx = _oacinternal_get_inventory(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_inventory(_api::StoreApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_get_inventory(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_order_by_id = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Order,
    Regex("^" * replace("400", "x"=>".") * "\$") => Nothing,
    Regex("^" * replace("404", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_get_order_by_id(_api::StoreApi, order_id::Int64; _mediaType=nothing)
    OpenAPI.validate_param("order_id", "get_order_by_id", :maximum, order_id, 5, false)
    OpenAPI.validate_param("order_id", "get_order_by_id", :minimum, order_id, 1, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_order_by_id, "/store/order/{orderId}", [])
    OpenAPI.Clients.set_param(_ctx.path, "orderId", order_id)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Find purchase order by ID

For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions

Params:
- order_id::Int64 (required)

Return: Order, OpenAPI.Clients.ApiResponse
"""
function get_order_by_id(_api::StoreApi, order_id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_order_by_id(_api, order_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_order_by_id(_api::StoreApi, response_stream::Channel, order_id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_order_by_id(_api, order_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_place_order = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Order,
    Regex("^" * replace("400", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_place_order(_api::StoreApi, order::Order; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_place_order, "/store/order", [], order)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/xml", "application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Place an order for a pet

Params:
- order::Order (required)

Return: Order, OpenAPI.Clients.ApiResponse
"""
function place_order(_api::StoreApi, order::Order; _mediaType=nothing)
    _ctx = _oacinternal_place_order(_api, order; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function place_order(_api::StoreApi, response_stream::Channel, order::Order; _mediaType=nothing)
    _ctx = _oacinternal_place_order(_api, order; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export delete_order
export get_inventory
export get_order_by_id
export place_order
