Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.cors

A middleware that applies CORS headers to the HTTP response.

**Signature**

```ts
declare const cors: (options?: { readonly allowedOrigins?: ReadonlyArray<string> | undefined; readonly allowedMethods?: ReadonlyArray<string> | undefined; readonly allowedHeaders?: ReadonlyArray<string> | undefined; readonly exposedHeaders?: ReadonlyArray<string> | undefined; readonly maxAge?: number | undefined; readonly credentials?: boolean | undefined; } | undefined) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L763)

Since v1.0.0