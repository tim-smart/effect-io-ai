# dedupeAdjacent

Deduplicates adjacent elements that are identical.

To import and use `dedupeAdjacent` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.dedupeAdjacent
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 1, 2, 2, 3, 3]
const unique = Array.dedupeAdjacent(numbers)
assert.deepStrictEqual(unique, [1, 2, 3])
```

**Signature**

```ts
export declare const dedupeAdjacent: <A>(self: Iterable<A>) => Array<A>
```
