Package: `effect`<br />
Module: `Array`<br />

## Array.intersectionWith

Creates an `Array` of unique values that are included in all given `Iterable`s using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

**Example**

```ts
import { Array } from "effect"

const array1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
const array2 = [{ id: 3 }, { id: 4 }, { id: 1 }]
const isEquivalent = (a: { id: number }, b: { id: number }) => a.id === b.id
const result = Array.intersectionWith(isEquivalent)(array2)(array1)
console.log(result) // [{ id: 1 }, { id: 3 }]
```

**Signature**

```ts
declare const intersectionWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2343)

Since v2.0.0