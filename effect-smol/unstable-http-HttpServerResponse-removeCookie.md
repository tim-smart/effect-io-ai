Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.removeCookie

Returns a response with the cookie of the specified name removed.

**Signature**

```ts
declare const removeCookie: { (name: string): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, name: string): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L569)

Since v4.0.0