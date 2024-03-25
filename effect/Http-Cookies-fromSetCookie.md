# fromSetCookie

Create a Cookies object from a set of Set-Cookie headers

To import and use `fromSetCookie` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.fromSetCookie
```

**Signature**

```ts
export declare const fromSetCookie: (headers: Iterable<string> | string) => Cookies
```
