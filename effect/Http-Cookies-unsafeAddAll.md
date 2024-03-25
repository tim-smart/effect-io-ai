# unsafeAddAll

Add multiple cookies to a Cookies object, throwing an error if invalid

To import and use `unsafeAddAll` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.unsafeAddAll
```

**Signature**

```ts
export declare const unsafeAddAll: {
  (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Cookies
  (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Cookies
}
```
