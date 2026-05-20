Package: `effect`<br />
Module: `AtomHttpApi`<br />

## AtomHttpApi.Service

Creates a `Context.Service` class for an HTTP API client backed by an atom
runtime.

**Details**

The options provide the API definition, HTTP client layer, optional client and
response transforms, base URL, and runtime factory used by the query and
mutation helpers.

**Signature**

```ts
declare const Service: <Self>() => <const Id extends string, ApiId extends string, Groups extends HttpApiGroup.Any>(id: Id, options: { readonly api: HttpApi.HttpApi<ApiId, Groups>; readonly httpClient: Layer.Layer<HttpApiGroup.ClientServices<Groups> | HttpClient.HttpClient> | ((get: Atom.AtomContext) => Layer.Layer<HttpApiGroup.ClientServices<Groups> | HttpClient.HttpClient>); readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; readonly runtime?: Atom.RuntimeFactory | undefined; }) => AtomHttpApiClient<Self, Id, Groups>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomHttpApi.ts#L188)

Since v4.0.0