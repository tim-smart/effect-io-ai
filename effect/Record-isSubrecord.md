# isSubrecord

Check if one record is a subrecord of another, meaning it contains all the keys and values found in the second record.
This comparison uses default equality checks (`Equal.equivalence()`).

To import and use `isSubrecord` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.isSubrecord
```

**Signature**

```ts
export declare const isSubrecord: {
  <K extends string, A>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean
  <K extends string, A>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean
}
```
