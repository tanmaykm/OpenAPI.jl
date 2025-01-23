# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""findPetsByStatus_200_response

    FindPetsByStatus200Response(;
        result=nothing,
    )

    - result::FindPetsByStatusStatusParameter
"""
Base.@kwdef mutable struct FindPetsByStatus200Response <: OpenAPI.APIModel
    result = nothing # spec type: Union{ Nothing, FindPetsByStatusStatusParameter }

    function FindPetsByStatus200Response(result, )
        OpenAPI.validate_property(FindPetsByStatus200Response, Symbol("result"), result)
        return new(result, )
    end
end # type FindPetsByStatus200Response

const _property_types_FindPetsByStatus200Response = Dict{Symbol,String}(Symbol("result")=>"FindPetsByStatusStatusParameter", )
OpenAPI.property_type(::Type{ FindPetsByStatus200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FindPetsByStatus200Response[name]))}

function check_required(o::FindPetsByStatus200Response)
    true
end

function OpenAPI.validate_property(::Type{ FindPetsByStatus200Response }, name::Symbol, val)
end