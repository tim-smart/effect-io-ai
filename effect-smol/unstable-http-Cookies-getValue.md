Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.getValue

Gets the decoded value of a cookie by name.

Returns `Option.none()` when the cookie is not present.

**Signature**

```ts
declare const getValue: { (name: string): (self: Cookies) => Option.Option<string>; (self: Cookies, name: string): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L582)

Since v4.0.0