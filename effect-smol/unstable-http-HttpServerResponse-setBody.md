Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setBody

Replaces the body of an `HttpServerResponse`.

When the body carries a content type or content length, the returned response
includes the corresponding headers.

**Signature**

```ts
declare const setBody: { (body: Body.HttpBody): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, body: Body.HttpBody): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L874)

Since v4.0.0