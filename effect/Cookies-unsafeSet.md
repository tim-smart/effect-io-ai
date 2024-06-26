# unsafeSet

Add a cookie to a Cookies object

To import and use `unsafeSet` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.unsafeSet
```

**Signature**

```ts
export declare const unsafeSet: {
  (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Cookies
  (self: Cookies, name: string, value: string, options?: Cookie["options"]): Cookies
}
```
