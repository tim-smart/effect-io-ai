Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.makeCookie

Creates a cookie, validating the name, encoded value, domain, path, and finite `maxAge`.

**Details**

Returns a `CookiesError` in the `Result` failure channel when validation fails.

**Signature**

```ts
declare const makeCookie: (name: string, value: string, options?: Cookie["options"] | undefined) => Result.Result<Cookie, CookiesError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L451)

Since v4.0.0