Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.middlewareOpenApi

A middleware that adds an openapi.json endpoint to the API.

**Signature**

```ts
declare const middlewareOpenApi: (options?: { readonly path?: HttpApiEndpoint.PathSegment | undefined; readonly additionalPropertiesStrategy?: OpenApi.AdditionalPropertiesStrategy | undefined; } | undefined) => Layer.Layer<never, never, HttpApi.Api>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L937)

Since v1.0.0