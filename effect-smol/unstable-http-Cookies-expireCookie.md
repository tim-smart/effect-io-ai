Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.expireCookie

Adds an expired cookie with an empty value, `Max-Age=0`, and an epoch `Expires` value.

Returns a `CookiesError` in the `Result` failure channel when the name or options are invalid.

**Signature**

```ts
declare const expireCookie: { (name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L655)

Since v4.0.0