Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.flip

Reverses the argument order of a combiner's `combine` method.

When to use:
- You need the "right" value to act as the accumulator side.
- You want to reverse the natural direction of a non-commutative combiner
  (e.g. string concatenation).

Behavior:
- Returns a new `Combiner` where `combine(self, that)` calls the original
  combiner as `combine(that, self)`.
- Does not mutate the input combiner.

**Example** (reversing string concatenation)

```ts
import { Combiner, String } from "effect"

const Prepend = Combiner.flip(String.ReducerConcat)

console.log(Prepend.combine("a", "b"))
// Output: "ba"
```

**See**

- `make`

**Signature**

```ts
declare const flip: <A>(combiner: Combiner<A>) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L160)

Since v4.0.0