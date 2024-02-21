# getEquivalence

Create an `Equivalence` for records using the provided `Equivalence` for values.

To import and use `getEquivalence` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.getEquivalence
```

**Signature**

```ts
export declare const getEquivalence: <K extends string, A>(
  equivalence: Equivalence<A>
) => Equivalence<ReadonlyRecord<K, A>>
```
