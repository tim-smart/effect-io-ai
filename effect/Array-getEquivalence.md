# getEquivalence

Creates an equivalence relation for arrays.

To import and use `getEquivalence` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.getEquivalence
```

**Example**

```ts
import { Array } from "effect"

const numbers1 = [1, 2, 3]
const numbers2 = [1, 2, 3]
const eq = Array.getEquivalence<number>((a, b) => a === b)
assert.deepStrictEqual(eq(numbers1, numbers2), true)
```

**Signature**

```ts
export declare const getEquivalence: <A>(
  isEquivalent: Equivalence.Equivalence<A>
) => Equivalence.Equivalence<ReadonlyArray<A>>
```
