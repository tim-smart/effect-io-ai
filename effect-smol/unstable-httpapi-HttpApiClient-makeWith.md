Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.makeWith

Constructs a type-safe client for an HTTP API from the supplied `HttpClient`,
using the API metadata to encode requests, execute middleware, and decode
responses.

**Signature**

```ts
declare const makeWith: <ApiId extends string, Groups extends HttpApiGroup.Any, E, R>(api: HttpApi.HttpApi<ApiId, Groups>, options: { readonly httpClient: HttpClient.HttpClient.With<E, R>; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => Effect.Effect<Client<Groups, E, R>, never, HttpApiGroup.MiddlewareClient<Groups>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L454)

Since v4.0.0