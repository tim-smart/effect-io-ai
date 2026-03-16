Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.expireCookie

Add an expired cookie to a Cookies object

**Signature**

```ts
declare const expireCookie: { (name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L598)

Since v4.0.0