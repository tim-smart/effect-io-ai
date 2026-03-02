Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.set

Add a cookie to a Cookies object

**Signature**

```ts
declare const set: { (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Result.Result<Cookies, CookiesError>; (self: Cookies, name: string, value: string, options?: Cookie["options"]): Result.Result<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cookies.ts#L544)

Since v4.0.0