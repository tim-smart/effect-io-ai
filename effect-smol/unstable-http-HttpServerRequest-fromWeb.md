Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.fromWeb

Wraps a Web `Request` as an `HttpServerRequest`.

The request's current URL is stored without the scheme and host, while the
original Web URL remains available as `originalUrl`.

**Signature**

```ts
declare const fromWeb: (request: globalThis.Request) => HttpServerRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L381)

Since v4.0.0