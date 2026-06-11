Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.setUnsafe

Creates and adds a cookie by name and value, throwing if the cookie fields are invalid.

**Signature**

```ts
declare const setUnsafe: { (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Cookies; (self: Cookies, name: string, value: string, options?: Cookie["options"]): Cookies; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L629)

Since v4.0.0