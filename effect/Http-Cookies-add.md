# add

Add a cookie to a Cookies object

To import and use `add` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.add
```

**Signature**

```ts
export declare const add: {
  (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Either.Either<Cookies, CookiesError>
  (self: Cookies, name: string, value: string, options?: Cookie["options"]): Either.Either<Cookies, CookiesError>
}
```
