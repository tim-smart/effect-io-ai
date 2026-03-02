Package: `effect`<br />
Module: `Array`<br />

## Array.remove

Removes the element at the specified index, returning a new array. If the
index is out of bounds, returns a copy of the original.

- Does not mutate the input.

**Example** (Removing an element)

```ts
import { Array } from "effect"

console.log(Array.remove([1, 2, 3, 4], 2)) // [1, 2, 4]
console.log(Array.remove([1, 2, 3, 4], 5)) // [1, 2, 3, 4]
```

**See**

- `insertAt` — insert an element
- `filter` — remove elements by predicate

**Signature**

```ts
declare const remove: { (i: number): <A>(self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, i: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1772)

Since v2.0.0