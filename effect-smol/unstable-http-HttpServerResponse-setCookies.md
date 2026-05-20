Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setCookies

Sets multiple cookies on an `HttpServerResponse`.

**Details**

Each input entry contains a cookie name, value, and optional cookie options. The
returned effect fails with `CookiesError` if any cookie cannot be encoded.

**Signature**

```ts
declare const setCookies: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookies.Cookie["options"]]>): (self: HttpServerResponse) => Effect.Effect<HttpServerResponse, Cookies.CookiesError, never>; (self: HttpServerResponse, cookies: Iterable<readonly [name: string, value: string, options?: Cookies.Cookie["options"]]>): Effect.Effect<HttpServerResponse, Cookies.CookiesError, never>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L815)

Since v4.0.0