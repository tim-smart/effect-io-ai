Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.withLogAddress

Adds address logging to a layer that provides an `HttpServer`.

**Signature**

```ts
declare const withLogAddress: <A, E, R>(layer: Layer.Layer<A, E, R>) => Layer.Layer<A, E, R | Exclude<HttpServer, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L266)

Since v4.0.0