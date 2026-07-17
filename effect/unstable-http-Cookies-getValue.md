Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.getValue

Gets the decoded value of a cookie by name safely.

**Details**

Returns `Option.none()` when the cookie is not present.

**Signature**

```ts
declare const getValue: { (name: string): (self: Cookies) => Option.Option<string>; (self: Cookies, name: string): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cookies.ts#L584)

Since v4.0.0