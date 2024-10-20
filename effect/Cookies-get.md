# get

Get a cookie from a Cookies object

To import and use `get` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.get
```

**Signature**

```ts
export declare const get: {
  (name: string): (self: Cookies) => Option.Option<Cookie>
  (self: Cookies, name: string): Option.Option<Cookie>
}
```
