Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.cors

A middleware that applies CORS headers to the HTTP response.

**Signature**

```ts
declare const cors: (options?: { readonly allowedOrigins?: ReadonlyArray<string> | undefined; readonly allowedMethods?: ReadonlyArray<string> | undefined; readonly allowedHeaders?: ReadonlyArray<string> | undefined; readonly exposedHeaders?: ReadonlyArray<string> | undefined; readonly maxAge?: number | undefined; readonly credentials?: boolean | undefined; } | undefined) => Layer.Layer<never, never, HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L995)

Since v4.0.0