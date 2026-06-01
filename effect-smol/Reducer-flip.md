Package: `effect`<br />
Module: `Reducer`<br />

## Reducer.flip

Reverses the argument order of a reducer's `combine` method.

**When to use**

Use when you want the right-hand value to act as the accumulator, or need to
reverse a non-commutative reducer such as string concatenation.

**Details**

- Returns a new `Reducer` where `combine(self, that)` calls the original
  reducer as `combine(that, self)`.
- The `initialValue` is preserved from the original reducer.
- The `combineAll` is re-derived from the flipped `combine` (using the
  default left-to-right fold), not carried over from the original.

**Example** (Reversing string concatenation)

```ts
import { Reducer, String } from "effect"

const Prepend = Reducer.flip(String.ReducerConcat)

console.log(Prepend.combine("a", "b"))
// Output: "ba"

console.log(Prepend.combineAll(["a", "b", "c"]))
// Output: "cba"
```

**See**

- `make`
- `Combiner.flip` – the same operation on a plain `Combiner`

**Signature**

```ts
declare const flip: <A>(reducer: Reducer<A>) => Reducer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reducer.ts#L235)

Since v4.0.0