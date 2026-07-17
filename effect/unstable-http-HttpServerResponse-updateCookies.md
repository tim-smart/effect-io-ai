Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.updateCookies

Updates the cookies attached to an `HttpServerResponse` using the supplied
function.

**Details**

The original response is not mutated; a new response is returned with the
callback result as its cookie collection.

**Signature**

```ts
declare const updateCookies: { (f: (cookies: Cookies.Cookies) => Cookies.Cookies): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, f: (cookies: Cookies.Cookies) => Cookies.Cookies): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerResponse.ts#L757)

Since v4.0.0