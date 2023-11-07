# isSubrecord

Check if one record is a subrecord of another, meaning it contains all the keys and values found in the second record.
This comparison uses default equality checks (`Equal.equivalence()`).

To import and use `isSubrecord` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.isSubrecord
```

**Signature**

```ts
export declare const isSubrecord: {
  <A>(that: ReadonlyRecord<A>): (self: ReadonlyRecord<A>) => boolean
  <A>(self: ReadonlyRecord<A>, that: ReadonlyRecord<A>): boolean
}
```
