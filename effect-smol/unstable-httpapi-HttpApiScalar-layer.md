Package: `effect`<br />
Module: `HttpApiScalar`<br />

## HttpApiScalar.layer

Mounts a Scalar API reference page for an `HttpApi` using the bundled Scalar script.

**Details**

The route serves the OpenAPI specification generated from the API at the
configured path, defaulting to `/docs`.

**Signature**

```ts
declare const layer: <Id extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<Id, Groups>, options?: { readonly path?: `/${string}` | undefined; readonly scalar?: ScalarConfig; } | undefined) => Layer.Layer<never, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiScalar.ts#L242)

Since v4.0.0