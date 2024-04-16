# difference

Merge two records, preserving only the entries that are unique to each record.

To import and use `difference` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.difference
```

**Signature**

```ts
export declare const difference: {
  <K1 extends string, B>(
    that: ReadonlyRecord<K1, B>
  ): <K0 extends string, A>(self: ReadonlyRecord<K0, A>) => Record<K1 | K0, B | A>
  <K0 extends string, A, K1 extends string, B>(
    self: ReadonlyRecord<K0, A>,
    that: ReadonlyRecord<K1, B>
  ): Record<K0 | K1, A | B>
}
```
