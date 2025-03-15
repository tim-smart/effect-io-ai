Package: `effect`<br />
Module: `Array`<br />

## Array.dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

**Example**

```ts
import { Array } from "effect"

const result = Array.dedupeAdjacentWith([1, 1, 2, 2, 3, 3], (a, b) => a === b)
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const dedupeAdjacentWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3056)

Since v2.0.0