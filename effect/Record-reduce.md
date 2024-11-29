# reduce

Reduce a record to a single value by combining its entries with a specified function.

To import and use `reduce` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.reduce
undefined

**Signature**

```ts
export declare const reduce: {
  <Z, V, K extends string>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: ReadonlyRecord<K, V>) => Z
  <K extends string, V, Z>(self: ReadonlyRecord<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
