Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.flip

Reverses the argument order of a combiner's `combine` method.

**When to use**

Use when you want the right-hand value to act as the accumulator, or need to
reverse a non-commutative combiner such as string concatenation.

**Details**

Returns a new `Combiner` where `combine(self, that)` calls the original
combiner as `combine(that, self)`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L113)

Since v4.0.0