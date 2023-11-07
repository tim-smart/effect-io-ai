# difference

Merge two records, preserving only the entries that are unique to each record.

To import and use `difference` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(that: ReadonlyRecord<A>): (self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, that: ReadonlyRecord<A>): Record<string, A>
}
```
