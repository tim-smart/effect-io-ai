# merge

Combine two Cookies objects, removing duplicates from the first

To import and use `merge` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.merge
```

**Signature**

```ts
export declare const merge: { (that: Cookies): (self: Cookies) => Cookies; (self: Cookies, that: Cookies): Cookies }
```
