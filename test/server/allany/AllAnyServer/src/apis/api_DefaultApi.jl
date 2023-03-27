# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


function echo_anyof_mapped_pets_post_read(handler)
    function echo_anyof_mapped_pets_post_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["AnyOfMappedPets"] = OpenAPI.Servers.to_param_type(AnyOfMappedPets, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function echo_anyof_mapped_pets_post_validate(handler)
    function echo_anyof_mapped_pets_post_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function echo_anyof_mapped_pets_post_invoke(impl; post_invoke=nothing)
    function echo_anyof_mapped_pets_post_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.echo_anyof_mapped_pets_post(req::HTTP.Request, openapi_params["AnyOfMappedPets"];)
        if hasmethod(OpenAPI.Servers.server_response, Tuple{HTTP.Request,Any})
            resp = OpenAPI.Servers.server_response(req, ret)
        else
            resp = OpenAPI.Servers.server_response(ret)
        end
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function echo_anyof_pets_post_read(handler)
    function echo_anyof_pets_post_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["AnyOfPets"] = OpenAPI.Servers.to_param_type(AnyOfPets, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function echo_anyof_pets_post_validate(handler)
    function echo_anyof_pets_post_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function echo_anyof_pets_post_invoke(impl; post_invoke=nothing)
    function echo_anyof_pets_post_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.echo_anyof_pets_post(req::HTTP.Request, openapi_params["AnyOfPets"];)
        if hasmethod(OpenAPI.Servers.server_response, Tuple{HTTP.Request,Any})
            resp = OpenAPI.Servers.server_response(req, ret)
        else
            resp = OpenAPI.Servers.server_response(ret)
        end
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function echo_oneof_mapped_pets_post_read(handler)
    function echo_oneof_mapped_pets_post_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["OneOfMappedPets"] = OpenAPI.Servers.to_param_type(OneOfMappedPets, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function echo_oneof_mapped_pets_post_validate(handler)
    function echo_oneof_mapped_pets_post_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function echo_oneof_mapped_pets_post_invoke(impl; post_invoke=nothing)
    function echo_oneof_mapped_pets_post_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.echo_oneof_mapped_pets_post(req::HTTP.Request, openapi_params["OneOfMappedPets"];)
        if hasmethod(OpenAPI.Servers.server_response, Tuple{HTTP.Request,Any})
            resp = OpenAPI.Servers.server_response(req, ret)
        else
            resp = OpenAPI.Servers.server_response(ret)
        end
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function echo_oneof_pets_post_read(handler)
    function echo_oneof_pets_post_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        openapi_params["OneOfPets"] = OpenAPI.Servers.to_param_type(OneOfPets, String(req.body))
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function echo_oneof_pets_post_validate(handler)
    function echo_oneof_pets_post_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function echo_oneof_pets_post_invoke(impl; post_invoke=nothing)
    function echo_oneof_pets_post_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.echo_oneof_pets_post(req::HTTP.Request, openapi_params["OneOfPets"];)
        if hasmethod(OpenAPI.Servers.server_response, Tuple{HTTP.Request,Any})
            resp = OpenAPI.Servers.server_response(req, ret)
        else
            resp = OpenAPI.Servers.server_response(ret)
        end
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end


function registerDefaultApi(router::HTTP.Router, impl; path_prefix::String="", optional_middlewares...)
    HTTP.register!(router, "POST", path_prefix * "/echo_anyof_mapped_pets", OpenAPI.Servers.middleware(impl, echo_anyof_mapped_pets_post_read, echo_anyof_mapped_pets_post_validate, echo_anyof_mapped_pets_post_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/echo_anyof_pets", OpenAPI.Servers.middleware(impl, echo_anyof_pets_post_read, echo_anyof_pets_post_validate, echo_anyof_pets_post_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/echo_oneof_mapped_pets", OpenAPI.Servers.middleware(impl, echo_oneof_mapped_pets_post_read, echo_oneof_mapped_pets_post_validate, echo_oneof_mapped_pets_post_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/echo_oneof_pets", OpenAPI.Servers.middleware(impl, echo_oneof_pets_post_read, echo_oneof_pets_post_validate, echo_oneof_pets_post_invoke; optional_middlewares...))
    return router
end
