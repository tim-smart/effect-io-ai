Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.flip

Reverses the argument order of a combiner's `combine` method.

**When to use**

Use this when the "right" value should act as the accumulator side, or when
you want to reverse the natural direction of a non-commutative combiner such
as string concatenation.

**Details**

Returns a new `Combiner` where `combine(self, that)` calls the original
combiner as `combine(that, self)`. The input combiner is not mutated.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L161)

Since v4.0.0