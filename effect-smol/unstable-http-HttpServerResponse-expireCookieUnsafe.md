Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.expireCookieUnsafe

Sets an expired cookie on an `HttpServerResponse`, throwing if the expiration cookie
cannot be encoded.

**When to use**

Use when expiring one trusted cookie and encoding failures should throw
instead of being represented as `CookiesError` failures.

**Signature**

```ts
declare const expireCookieUnsafe: { (name: string, options?: Omit<NonNullable<Cookies.Cookie["options"]>, "expires" | "maxAge">): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, name: string, options?: Omit<NonNullable<Cookies.Cookie["options"]>, "expires" | "maxAge">): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L750)

Since v4.0.0