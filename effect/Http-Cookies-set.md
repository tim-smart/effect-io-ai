# set

Add a cookie to a Cookies object

To import and use `set` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.set
```

**Signature**

```ts
export declare const set: {
  (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Either.Either<Cookies, CookiesError>
  (self: Cookies, name: string, value: string, options?: Cookie["options"]): Either.Either<Cookies, CookiesError>
}
```
