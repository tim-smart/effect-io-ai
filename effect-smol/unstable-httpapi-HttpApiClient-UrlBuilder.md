Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.UrlBuilder

The type-safe URL builder shape for an HTTP API, mirroring the generated client
layout while returning URL strings instead of executing requests.

**Signature**

```ts
type UrlBuilder<Api> = Api extends HttpApi.HttpApi<infer _ApiId, infer Groups> ? Simplify<
    & {
      readonly [Group in Extract<Groups, { readonly topLevel: false }> as HttpApiGroup.Name<Group>]: UrlBuilderGroup<
        HttpApiGroup.Endpoints<Group>
      >
    }
    & {
      readonly [Method in UrlBuilderTopLevelMethods<Groups> as Method[0]]: Method[1]
    }
  >
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L211)

Since v4.0.0