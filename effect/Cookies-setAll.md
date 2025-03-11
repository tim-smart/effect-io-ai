## setAll

Add multiple cookies to a Cookies object

**Signature**

```ts
declare const setAll: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Either.Either<Cookies, CookiesError>; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Either.Either<Cookies, CookiesError>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Cookies.ts#L537)

Since v1.0.0