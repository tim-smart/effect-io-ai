# intersectionWith

Creates an `Array` of unique values that are included in all given `Iterable`s using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

To import and use `intersectionWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.intersectionWith
```

**Example**

```ts
import { Array } from "effect"

const array1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
const array2 = [{ id: 3 }, { id: 4 }, { id: 1 }]
const isEquivalent = (a: { id: number }, b: { id: number }) => a.id === b.id
const result = Array.intersectionWith(isEquivalent)(array2)(array1)
assert.deepStrictEqual(result, [{ id: 1 }, { id: 3 }])
```

**Signature**

```ts
export declare const intersectionWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Iterable<A>): (self: Iterable<A>) => Array<A>
  (self: Iterable<A>, that: Iterable<A>): Array<A>
}
```
