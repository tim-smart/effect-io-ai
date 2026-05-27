Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.mergeCookies

Merges additional cookies into the cookies attached to an
`HttpServerResponse`.

**Details**

The original response is not mutated; a new response is returned with the merged
cookie collection.

**Signature**

```ts
declare const mergeCookies: { (cookies: Cookies.Cookies): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, cookies: Cookies.Cookies): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L817)

Since v4.0.0