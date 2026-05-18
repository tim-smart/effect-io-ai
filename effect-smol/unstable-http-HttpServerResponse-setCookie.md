Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setCookie

Sets a cookie on the response.

The effect fails with `CookiesError` if the cookie name, value, or options are
invalid.

**Signature**

```ts
declare const setCookie: { (name: string, value: string, options?: Cookies.Cookie["options"]): (self: HttpServerResponse) => Effect.Effect<HttpServerResponse, Cookies.CookiesError>; (self: HttpServerResponse, name: string, value: string, options?: Cookies.Cookie["options"]): Effect.Effect<HttpServerResponse, Cookies.CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L579)

Since v4.0.0