Package: `effect`<br />
Module: `Reducer`<br />

## Reducer.Reducer

Represents a strategy for reducing a collection of values of type `A` into
a single result.

Extends `Combiner.Combiner` with:
- `initialValue` – the identity/neutral element for `combine`.
- `combineAll` – folds an entire `Iterable<A>` from `initialValue`.

When to use:
- You need to fold/reduce a collection into a single value.
- You want a reusable reducing strategy that can be passed to library
  functions like `Struct.makeReducer`, `Option.makeReducer`, or
  `Record.makeReducerUnion`.
- You need both the combining logic *and* a known starting value.

Many modules ship pre-built reducers:
- `Number.ReducerSum`, `Number.ReducerMultiply`
- `String.ReducerConcat`
- `Boolean.ReducerAnd`, `Boolean.ReducerOr`

**Example** (string concatenation reducer)

```ts
import { Reducer } from "effect"

const Concat = Reducer.make<string>((a, b) => a + b, "")

console.log(Concat.combineAll(["hello", " ", "world"]))
// Output: "hello world"
```

**See**

- `make` – create a `Reducer` from a function and initial value
- `Combiner.Combiner` – parent interface without `initialValue`

**Signature**

```ts
export interface Reducer<A> extends Combiner.Combiner<A> {
  /** Neutral starting value (combining with this changes nothing). */
  readonly initialValue: A

  /** Combines all values in the collection, starting from `initialValue`. */
  readonly combineAll: (collection: Iterable<A>) => A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reducer.ts#L109)

Since v4.0.0