# isSubrecordBy

Check if all the keys and values in one record are also found in another record.

To import and use `isSubrecordBy` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.isSubrecordBy
```

**Signature**

```ts
export declare const isSubrecordBy: <A>(equivalence: Equivalence<A>) => {
  <K extends string>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean
  <K extends string>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean
}
```
