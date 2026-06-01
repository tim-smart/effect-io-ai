Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setCookieUnsafe

Sets a cookie on an `HttpServerResponse`, throwing if the cookie cannot be
encoded.

**When to use**

Use when you need to set one trusted cookie and want encoding failures to
throw instead of being represented as `CookiesError` failures.

**Signature**

```ts
declare const setCookieUnsafe: { (name: string, value: string, options?: Cookies.Cookie["options"]): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, name: string, value: string, options?: Cookies.Cookie["options"]): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L717)

Since v4.0.0