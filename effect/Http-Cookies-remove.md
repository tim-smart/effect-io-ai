# remove

Remove a cookie by name

To import and use `remove` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.remove
```

**Signature**

```ts
export declare const remove: { (name: string): (self: Cookies) => Cookies; (self: Cookies, name: string): Cookies }
```
