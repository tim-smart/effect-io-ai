Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.makeReducer

Creates a `Reducer` for a tuple shape by providing a `Reducer` for each
position. The initial value is derived from each position's
`Reducer.initialValue`. When reducing a collection of tuples, each element
is combined independently.

- Use to fold a collection of tuples into a single summary tuple.
- Does not mutate the inputs; returns a fresh tuple.

**Example** (Reducing a collection of tuples)

```ts
import { Number, String, Tuple } from "effect"

const R = Tuple.makeReducer<readonly [number, string]>([
  Number.ReducerSum,
  String.ReducerConcat
])

const result = R.combineAll([
  [1, "a"],
  [2, "b"],
  [3, "c"]
])
console.log(result) // [6, "abc"]
```

**See**

- `makeCombiner` – like `makeReducer` but without an initial value

**Signature**

```ts
declare const makeReducer: <A extends ReadonlyArray<unknown>>(reducers: { readonly [K in keyof A]: Reducer.Reducer<A[K]>; }) => Reducer.Reducer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L721)

Since v4.0.0