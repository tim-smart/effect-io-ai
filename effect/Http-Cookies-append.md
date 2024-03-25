# append

Add a cookie to a Cookies object

To import and use `append` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.append
```

**Signature**

```ts
export declare const append: { (cookie: Cookie): (self: Cookies) => Cookies; (self: Cookies, cookie: Cookie): Cookies }
```
