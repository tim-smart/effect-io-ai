Package: `effect`<br />
Module: `HttpApiScalar`<br />

## HttpApiScalar.layerCdn

Mounts a Scalar API reference page for an `HttpApi` that loads Scalar from jsDelivr.

**Details**

The route serves the OpenAPI specification generated from the API at the
configured path, defaulting to `/docs`; `version` selects the Scalar package
version loaded from the CDN.

**Signature**

```ts
declare const layerCdn: <Id extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<Id, Groups>, options?: { readonly path?: `/${string}` | undefined; readonly scalar?: ScalarConfig; readonly version?: string | undefined; } | undefined) => Layer.Layer<never, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiScalar.ts#L266)

Since v4.0.0