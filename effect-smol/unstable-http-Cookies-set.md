Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.set

Creates and adds a cookie by name and value.

**Details**

The cookie fields are validated first; invalid input returns a `CookiesError` in the `Result` failure channel.

**Signature**

```ts
declare const set: { (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, name: string, value: string, options?: Cookie["options"]): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L654)

Since v4.0.0