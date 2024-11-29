# getEquivalence

Create an `Equivalence` for records using the provided `Equivalence` for values.

To import and use `getEquivalence` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.getEquivalence
undefined

**Signature**

```ts
export declare const getEquivalence: <K extends string, A>(
  equivalence: Equivalence<A>
) => Equivalence<ReadonlyRecord<K, A>>
```
