# reduce

Reduce a record to a single value by combining its entries with a specified function.

To import and use `reduce` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, V, K extends string>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: Record<K, V>) => Z
  <K extends string, V, Z>(self: Record<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
