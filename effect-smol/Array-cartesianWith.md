Package: `effect`<br />
Module: `Array`<br />

## Array.cartesianWith

Computes the cartesian product of two arrays, applying a combiner to each pair.

**When to use**

Use to compute every combination from two arrays and immediately transform
each pair into a custom result.

**Details**

Produces every combination of an element from `self` with an element from
`that`, so the result length is `self.length * that.length`. Iteration visits
every element of `that` for each element of `self`.

**Example** (Combining numbers and letters)

```ts
import { Array } from "effect"

const result = Array.cartesianWith([1, 2], ["a", "b"], (a, b) => `${a}-${b}`)
console.log(result) // ["1-a", "1-b", "2-a", "2-b"]
```

**See**

- `cartesian` for returning tuples instead of applying a combiner

**Signature**

```ts
declare const cartesianWith: { <A, B, C>(that: ReadonlyArray<B>, f: (a: A, b: B) => C): (self: ReadonlyArray<A>) => Array<C>; <A, B, C>(self: ReadonlyArray<A>, that: ReadonlyArray<B>, f: (a: A, b: B) => C): Array<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4616)

Since v2.0.0