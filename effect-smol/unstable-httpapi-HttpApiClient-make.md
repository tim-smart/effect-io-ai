Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.make

Constructs a type-safe client for an HTTP API using the `HttpClient` service,
endpoint schemas, middleware, and optional client or response transformations.

**Signature**

```ts
declare const make: <ApiId extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<ApiId, Groups>, options?: { readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => Effect.Effect<Client<Groups>, never, HttpClient.HttpClient | HttpApiGroup.MiddlewareClient<Groups>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L426)

Since v4.0.0