# unsafeSetAll

Add multiple cookies to a Cookies object, throwing an error if invalid

To import and use `unsafeSetAll` from the "Cookies" module:

ts
import \* as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.unsafeSetAll
undefined

**Signature**

```ts
export declare const unsafeSetAll: {
  (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Cookies
  (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Cookies
}
```
