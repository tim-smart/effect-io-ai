Package: `effect`<br />
Module: `Reducer`<br />

## Reducer.Reducer

Represents a strategy for reducing a collection of values of type `A` into
a single result.

**When to use**

Use when you need to fold/reduce a collection into a single value.
- You want a reusable reducing strategy that can be passed to library
  functions like `Struct.makeReducer`, `Option.makeReducer`, or
  `Record.makeReducerUnion`.
- You need both the combining logic *and* a known starting value.

**Details**

Extends `Combiner.Combiner` with:

- `initialValue` – the identity/neutral element for `combine`.
- `combineAll` – folds an entire `Iterable<A>` from `initialValue`.

Many modules ship pre-built reducers:

- `Number.ReducerSum`, `Number.ReducerMultiply`
- `String.ReducerConcat`
- `Boolean.ReducerAnd`, `Boolean.ReducerOr`

**Example** (String concatenation reducer)

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
  /**
   * Neutral starting value (combining with this changes nothing).
   *
   * **When to use**
   *
   * Use to seed a reduction and represent the result of reducing an empty collection.
   */
  readonly initialValue: A

  /**
   * Combines all values in the collection, starting from `initialValue`.
   *
   * **When to use**
   *
   * Use to reduce an iterable with this reducer's initial value and combining operation.
   */
  readonly combineAll: (collection: Iterable<A>) => A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reducer.ts#L55)

Since v4.0.0