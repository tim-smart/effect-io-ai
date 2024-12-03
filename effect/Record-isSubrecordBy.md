# isSubrecordBy

Check if all the keys and values in one record are also found in another record.

To import and use `isSubrecordBy` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.isSubrecordBy
```

**Signature**

```ts
export declare const isSubrecordBy: <A>(equivalence: Equivalence<A>) => {
  <K extends string>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean
  <K extends string>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean
}
```
