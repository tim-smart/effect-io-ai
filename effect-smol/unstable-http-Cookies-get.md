Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.get

Gets a cookie from a Cookies object safely.

**Signature**

```ts
declare const get: { (name: string): (self: Cookies) => Option.Option<Cookie>; (self: Cookies, name: string): Option.Option<Cookie>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L618)

Since v4.0.0