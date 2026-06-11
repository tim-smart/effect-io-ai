Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.replaceCookies

Returns a response with its cookie collection replaced by the supplied cookies.

**Signature**

```ts
declare const replaceCookies: { (cookies: Cookies.Cookies): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, cookies: Cookies.Cookies): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L581)

Since v4.0.0