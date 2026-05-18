Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.Method

The typed function generated for an endpoint, accepting the endpoint request
shape and returning an effect whose success, error, and service channels reflect
the endpoint schemas, middleware, and selected response mode.

**Signature**

```ts
type Method<Endpoint, E, R> = [Endpoint] extends [
    HttpApiEndpoint.HttpApiEndpoint<
      infer _Name,
      infer _Method,
      infer _Path,
      infer _Params,
      infer _Query,
      infer _Payload,
      infer _Headers,
      infer _Success,
      infer _Error,
      infer _Middleware,
      infer _MR
    >
  ] ? <Mode extends ResponseMode = ResponseMode>(
      request: Simplify<HttpApiEndpoint.ClientRequest<_Params, _Query, _Payload, _Headers, Mode>>
    ) => Effect.Effect<
      Response<_Success["Type"], Mode>,
      | HttpApiMiddleware.Error<_Middleware>
      | HttpApiMiddleware.ClientError<_Middleware>
      | E
      | HttpClientError.HttpClientError
      | ([Mode] extends ["response-only"] ? never : _Error["Type"] | Schema.SchemaError),
      | R
      | _Params["EncodingServices"]
      | _Query["EncodingServices"]
      | _Payload["EncodingServices"]
      | _Headers["EncodingServices"]
      | ([Mode] extends ["response-only"] ? never : _Success["DecodingServices"] | _Error["DecodingServices"])
    > :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L134)

Since v4.0.0