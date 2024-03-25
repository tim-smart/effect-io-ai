# toSetCookieHeaders

Serialize a Cookies object into Headers object containing one or more Set-Cookie headers

To import and use `toSetCookieHeaders` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.toSetCookieHeaders
```

**Signature**

```ts
export declare const toSetCookieHeaders: (self: Cookies) => Array<string>
```
