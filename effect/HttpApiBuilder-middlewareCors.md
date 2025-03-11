## middlewareCors

A CORS middleware layer that can be provided to the `HttpApiBuilder.serve` layer.

**Signature**

```ts
declare const middlewareCors: (options?: { readonly allowedOrigins?: ReadonlyArray<string> | undefined; readonly allowedMethods?: ReadonlyArray<string> | undefined; readonly allowedHeaders?: ReadonlyArray<string> | undefined; readonly exposedHeaders?: ReadonlyArray<string> | undefined; readonly maxAge?: number | undefined; readonly credentials?: boolean | undefined; } | undefined) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L920)

Since v1.0.0