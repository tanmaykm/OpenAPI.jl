# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct DefaultApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `DefaultApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ DefaultApi }) = "http://localhost"

const _returntypes_post_urlencoded_form_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => TestResponse,
)

function _oacinternal_post_urlencoded_form(_api::DefaultApi, form_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_urlencoded_form_DefaultApi, "/test/{form_id}/post_urlencoded_form_data", [])
    OpenAPI.Clients.set_param(_ctx.path, "form_id", form_id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.form, "additionalMetadata", additional_metadata)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "file", file)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", ] : [_mediaType])
    return _ctx
end

@doc raw"""posts a urlencoded form, with file contents and additional metadata, both of which are strings

Params:
- form_id::Int64 (required)
- additional_metadata::String
- file::String

Return: TestResponse, OpenAPI.Clients.ApiResponse
"""
function post_urlencoded_form(_api::DefaultApi, form_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_urlencoded_form(_api, form_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_urlencoded_form(_api::DefaultApi, response_stream::Channel, form_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_urlencoded_form(_api, form_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_upload_binary_file_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => TestResponse,
)

function _oacinternal_upload_binary_file(_api::DefaultApi, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_upload_binary_file_DefaultApi, "/test/{file_id}/upload_binary_file", [])
    OpenAPI.Clients.set_param(_ctx.path, "file_id", file_id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.form, "additionalMetadata", additional_metadata)  # type String
    OpenAPI.Clients.set_param(_ctx.file, "file", file)  # type Vector{UInt8}
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""uploads a binary file given its path, along with some metadata

Params:
- file_id::Int64 (required)
- additional_metadata::String
- file::String

Return: TestResponse, OpenAPI.Clients.ApiResponse
"""
function upload_binary_file(_api::DefaultApi, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_upload_binary_file(_api, file_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function upload_binary_file(_api::DefaultApi, response_stream::Channel, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_upload_binary_file(_api, file_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_upload_text_file_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => TestResponse,
)

function _oacinternal_upload_text_file(_api::DefaultApi, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_upload_text_file_DefaultApi, "/test/{file_id}/upload_text_file", [])
    OpenAPI.Clients.set_param(_ctx.path, "file_id", file_id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.form, "additionalMetadata", additional_metadata)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "file", file)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""uploads text file contents along with some metadata

Params:
- file_id::Int64 (required)
- additional_metadata::String
- file::String

Return: TestResponse, OpenAPI.Clients.ApiResponse
"""
function upload_text_file(_api::DefaultApi, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_upload_text_file(_api, file_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function upload_text_file(_api::DefaultApi, response_stream::Channel, file_id::Int64; additional_metadata=nothing, file=nothing, _mediaType=nothing)
    _ctx = _oacinternal_upload_text_file(_api, file_id; additional_metadata=additional_metadata, file=file, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export post_urlencoded_form
export upload_binary_file
export upload_text_file