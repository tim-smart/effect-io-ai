Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.expireCookie

Sets an expired cookie on an `HttpServerResponse`.

**Details**

Returns an effect because cookie encoding can fail. The original response is not
mutated; the effect succeeds with a response containing the updated cookie set.

**Signature**

```ts
declare const expireCookie: { (name: string, options?: Omit<NonNullable<Cookies.Cookie["options"]>, "expires" | "maxAge">): (self: HttpServerResponse) => Effect.Effect<HttpServerResponse, Cookies.CookiesError>; (self: HttpServerResponse, name: string, options?: Omit<NonNullable<Cookies.Cookie["options"]>, "expires" | "maxAge">): Effect.Effect<HttpServerResponse, Cookies.CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L671)

Since v4.0.0