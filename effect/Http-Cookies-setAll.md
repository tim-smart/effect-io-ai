# setAll

Add multiple cookies to a Cookies object

To import and use `setAll` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.setAll
```

**Signature**

```ts
export declare const setAll: {
  (
    cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>
  ): (self: Cookies) => Either.Either<Cookies, CookiesError>
  (
    self: Cookies,
    cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>
  ): Either.Either<Cookies, CookiesError>
}
```
