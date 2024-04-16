# join

Joins the elements together with "sep" in the middle.

To import and use `join` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.join
```

**Signature**

```ts
export declare const join: {
  (sep: string): (self: Iterable<string>) => string
  (self: Iterable<string>, sep: string): string
}
```
