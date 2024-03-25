# unsafeAdd

Add a cookie to a Cookies object

To import and use `unsafeAdd` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.unsafeAdd
```

**Signature**

```ts
export declare const unsafeAdd: {
  (name: string, value: string, options?: Cookie["options"]): (self: Cookies) => Cookies
  (self: Cookies, name: string, value: string, options?: Cookie["options"]): Cookies
}
```
