Package: `effect`<br />
Module: `HttpApiSwagger`<br />

## HttpApiSwagger.layer

Mounts Swagger UI for an `HttpApi`.

The route serves the OpenAPI specification generated from the API at the
configured path, defaulting to `/docs`.

**Signature**

```ts
declare const layer: <Id extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<Id, Groups>, options?: { readonly path?: `/${string}` | undefined; }) => Layer.Layer<never, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSwagger.ts#L75)

Since v4.0.0