# setAllCookie

Add multiple cookies to a Cookies object

To import and use `setAllCookie` from the "Cookies" module:

ts
import \* as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.setAllCookie
undefined

**Signature**

```ts
export declare const setAllCookie: {
  (cookies: Iterable<Cookie>): (self: Cookies) => Cookies
  (self: Cookies, cookies: Iterable<Cookie>): Cookies
}
```
