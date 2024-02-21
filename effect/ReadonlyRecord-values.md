# values

Retrieve the values of a given record as an array.

To import and use `values` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.values
```

**Signature**

```ts
export declare const values: <K extends string, A>(self: ReadonlyRecord<K, A>) => A[]
```
