Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.layerTracerDisabledForUrls

Creates a layer that disables server-side tracing for requests whose URL exactly matches one of the supplied URLs.

**Signature**

```ts
declare const layerTracerDisabledForUrls: (urls: ReadonlyArray<string>) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L126)

Since v4.0.0