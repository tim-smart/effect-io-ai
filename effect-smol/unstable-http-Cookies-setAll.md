Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.setAll

Creates and adds multiple cookies from name/value/options tuples.

**Details**

If any tuple is invalid, returns the first `CookiesError` and leaves the original collection unchanged.

**Signature**

```ts
declare const setAll: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L777)

Since v4.0.0