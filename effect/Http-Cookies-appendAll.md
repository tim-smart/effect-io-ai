# appendAll

Add multiple cookies to a Cookies object

To import and use `appendAll` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.appendAll
```

**Signature**

```ts
export declare const appendAll: {
  (cookies: Iterable<Cookie>): (self: Cookies) => Cookies
  (self: Cookies, cookies: Iterable<Cookie>): Cookies
}
```
