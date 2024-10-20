# getValue

Get a cookie from a Cookies object

To import and use `getValue` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.getValue
```

**Signature**

```ts
export declare const getValue: {
  (name: string): (self: Cookies) => Option.Option<string>
  (self: Cookies, name: string): Option.Option<string>
}
```
