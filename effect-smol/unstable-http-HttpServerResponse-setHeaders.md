Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setHeaders

Returns a response with all supplied headers set on the existing header map.

**Signature**

```ts
declare const setHeaders: { (input: Headers.Input): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, input: Headers.Input): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L526)

Since v4.0.0