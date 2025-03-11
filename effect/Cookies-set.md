## set

Add a cookie to a Cookies object

**Signature**

```ts
declare const set: { (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Either.Either<Cookies, CookiesError>; (self: Cookies, name: string, value: string, options?: Cookie["options"]): Either.Either<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Cookies.ts#L482)

Since v1.0.0