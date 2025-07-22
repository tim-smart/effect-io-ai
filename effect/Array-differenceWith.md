Package: `effect`<br />
Module: `Array`<br />

## Array.differenceWith

Creates a `Array` of values not included in the other given `Iterable` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2, 3]
const array2 = [2, 3, 4]
const difference = Array.differenceWith<number>((a, b) => a === b)(array1, array2)
console.log(difference) // [1]
```

**Signature**

```ts
declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2391)

Since v2.0.0