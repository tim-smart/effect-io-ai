Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.layerServices

Layer that provides the platform services commonly needed by HTTP
server tests.

**Details**

It includes `HttpPlatform`, `Path`, a weak ETag generator, and a no-op
`FileSystem`.

**Signature**

```ts
declare const layerServices: Layer.Layer<Path.Path | FileSystem.FileSystem | Etag.Generator | HttpPlatform.HttpPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L341)

Since v4.0.0