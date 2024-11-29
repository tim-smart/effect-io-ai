# makeCookie

Create a new cookie

To import and use `makeCookie` from the "Cookies" module:

ts
import \* as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.makeCookie
undefined

**Signature**

```ts
export declare function makeCookie(
  name: string,
  value: string,
  options?: Cookie["options"] | undefined
): Either.Either<Cookie, CookiesError>
```
