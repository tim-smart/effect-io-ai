# join

Joins the elements together with "sep" in the middle.

To import and use `join` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.join
undefined

**Example**

```ts
import { Array } from "effect"

const strings = ["a", "b", "c"]
const joined = Array.join(strings, "-")
assert.deepStrictEqual(joined, "a-b-c")
```

**Signature**

```ts
export declare const join: {
  (sep: string): (self: Iterable<string>) => string
  (self: Iterable<string>, sep: string): string
}
```
