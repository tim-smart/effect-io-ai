Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.setAllUnsafe

Add multiple cookies to a Cookies object, throwing an error if invalid

**Signature**

```ts
declare const setAllUnsafe: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Cookies; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Cookies; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L690)

Since v4.0.0