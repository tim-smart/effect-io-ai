Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.Combiner

Represents a strategy for combining two values of the same type `A`.

A `Combiner` contains a single `combine` method that takes two values and
returns a merged result. It does not include an identity/empty value; use
`Reducer` when you need one.

When to use:
- You need to describe how two values of the same type merge.
- You want to pass a reusable combining strategy to library functions like
  `Struct.makeCombiner` or `Option.makeCombinerFailFast`.
- You are building a `Reducer` and need to define the combining step first.

**Example** (number addition combiner)

```ts
import { Combiner } from "effect"

const Sum = Combiner.make<number>((self, that) => self + that)

console.log(Sum.combine(3, 4))
// Output: 7
```

**See**

- `make` – create a `Combiner` from a function

**Signature**

```ts
export interface Combiner<A> {
  /**
   * Combines two values into a new value.
   */
  readonly combine: (self: A, that: A) => A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L94)

Since v4.0.0