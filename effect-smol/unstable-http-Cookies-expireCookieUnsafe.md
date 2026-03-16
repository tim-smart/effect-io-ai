Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.expireCookieUnsafe

Add an expired cookie to a Cookies object, throwing an error if invalid

**Signature**

```ts
declare const expireCookieUnsafe: { (name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): (self: Cookies) => Cookies; (self: Cookies, name: string, options?: Omit<NonNullable<Cookie["options"]>, "expires" | "maxAge">): Cookies; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L628)

Since v4.0.0