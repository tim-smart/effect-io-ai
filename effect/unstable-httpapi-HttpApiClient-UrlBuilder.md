Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.UrlBuilder

The type-safe URL builder shape for an HTTP API, mirroring the generated client
layout while returning URL strings instead of executing requests.

**Signature**

```ts
type UrlBuilder<Api> = Api extends HttpApi.HttpApi<infer _ApiId, infer Groups> ?
  [Extract<Groups, { readonly topLevel: true }>] extends [never] ? UrlBuilderGroups<Groups>
  : [Extract<Groups, { readonly topLevel: false }>] extends [never] ? UrlBuilderTopLevelMethods<Groups>
  : Simplify<UrlBuilderGroups<Groups> & UrlBuilderTopLevelMethods<Groups>>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L226)

Since v4.0.0