Package: `effect`<br />
Module: `Array`<br />

## Array.cartesianWith

Computes the cartesian product of two arrays, applying a combiner to each pair.

- Produces every combination of an element from `self` with an element from `that`.
- Result length is `self.length * that.length`.
- Order: iterates `that` for each element of `self`.

**Example** (Combining numbers and letters)

```ts
import { Array } from "effect"

const result = Array.cartesianWith([1, 2], ["a", "b"], (a, b) => `${a}-${b}`)
console.log(result) // ["1-a", "1-b", "2-a", "2-b"]
```

**See**

- `cartesian` — returns tuples instead of applying a combiner

**Signature**

```ts
declare const cartesianWith: { <A, B, C>(that: ReadonlyArray<B>, f: (a: A, b: B) => C): (self: ReadonlyArray<A>) => Array<C>; <A, B, C>(self: ReadonlyArray<A>, that: ReadonlyArray<B>, f: (a: A, b: B) => C): Array<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4047)

Since v2.0.0