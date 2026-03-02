Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.flatten

Flattens an Iterable of Iterables into a single Iterable

**Example**

```ts
import { Iterable } from "effect"

// Flatten nested arrays
const nested = [[1, 2], [3, 4], [5, 6]]
const flat = Iterable.flatten(nested)
console.log(Array.from(flat)) // [1, 2, 3, 4, 5, 6]

// Flatten different iterable types
const mixed: Array<Iterable<string>> = ["ab", "cd"]
const flatMixed = Iterable.flatten(mixed)
console.log(Array.from(flatMixed)) // ["a", "b", "c", "d"]

// Flatten deeply nested (only one level)
const deepNested = [[[1, 2]], [[3, 4]]]
const oneLevelFlat = Iterable.flatten(deepNested)
console.log(Array.from(oneLevelFlat).map((arr) => Array.from(arr)))
// [[1, 2], [3, 4]] (still contains arrays)

// Empty iterables are handled correctly
const withEmpty = [[1, 2], [], [3, 4], []]
const flatWithEmpty = Iterable.flatten(withEmpty)
console.log(Array.from(flatWithEmpty)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const flatten: <A>(self: Iterable<Iterable<A>>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1484)

Since v2.0.0