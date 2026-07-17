Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.setAll

Creates and adds multiple cookies safely from name/value/options tuples.

**Details**

If any tuple is invalid, returns the first `CookiesError` and leaves the original collection unchanged.

**Signature**

```ts
declare const setAll: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cookies.ts#L725)

Since v4.0.0