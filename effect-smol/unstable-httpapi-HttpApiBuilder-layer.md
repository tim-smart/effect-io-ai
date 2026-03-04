Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.layer

Register an `HttpApi` with a `HttpRouter`.

**Signature**

```ts
declare const layer: <Id extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<Id, Groups>, options?: { readonly openapiPath?: `/${string}` | undefined; }) => Layer.Layer<never, never, Etag.Generator | HttpRouter.HttpRouter | FileSystem | HttpPlatform | Path | HttpApiGroup.ToService<Id, Groups>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L51)

Since v4.0.0