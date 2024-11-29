# parse

Tries to parse a `number` from a `string` using the `Number()` function.
The following special string values are supported: "NaN", "Infinity", "-Infinity".

To import and use `parse` from the "Number" module:

ts
import \* as Number from "effect/Number"
// Can be accessed like this
Number.parse
undefined

**Signature**

```ts
export declare const parse: (s: string) => Option<number>
```
