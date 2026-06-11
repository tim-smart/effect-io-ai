Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.layerHttpServices

Layer that provides Bun HTTP support services: `HttpPlatform`, weak ETag generation, and `BunServices`.

**Signature**

```ts
declare const layerHttpServices: Layer.Layer<BunServices.BunServices | HttpPlatform | Etag.Generator, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L245)

Since v4.0.0