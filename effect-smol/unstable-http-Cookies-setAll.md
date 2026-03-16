Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.setAll

Add multiple cookies to a Cookies object

**Signature**

```ts
declare const setAll: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L658)

Since v4.0.0