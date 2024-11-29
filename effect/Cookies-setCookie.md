# setCookie

Add a cookie to a Cookies object

To import and use `setCookie` from the "Cookies" module:

ts
import \* as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.setCookie
undefined

**Signature**

```ts
export declare const setCookie: {
  (cookie: Cookie): (self: Cookies) => Cookies
  (self: Cookies, cookie: Cookie): Cookies
}
```
