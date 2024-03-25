# unsafeMakeCookie

Create a new cookie, throwing an error if invalid

To import and use `unsafeMakeCookie` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.unsafeMakeCookie
```

**Signature**

```ts
export declare const unsafeMakeCookie: (name: string, value: string, options?: Cookie["options"] | undefined) => Cookie
```
