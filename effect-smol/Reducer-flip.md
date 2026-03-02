Package: `effect`<br />
Module: `Reducer`<br />

## Reducer.flip

Reverses the argument order of a reducer's `combine` method.

When to use:
- You need the "right" value to act as the accumulator side.
- You want to reverse the natural direction of a non-commutative reducer
  (e.g. string concatenation becomes prepend).

Behavior:
- Returns a new `Reducer` where `combine(self, that)` calls the original
  reducer as `combine(that, self)`.
- The `initialValue` is preserved from the original reducer.
- The `combineAll` is re-derived from the flipped `combine` (using the
  default left-to-right fold), not carried over from the original.
- Does not mutate the input reducer.

**Example** (reversing string concatenation)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reducer.ts#L215)

Since v4.0.0