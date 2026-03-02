Package: `effect`<br />
Module: `Struct`<br />

## Struct.makeReducer

Creates a `Reducer` for a struct shape by providing a `Reducer` for each
property. The initial value is derived from each property's
`Reducer.initialValue`. When reducing a collection of structs, each property
is combined independently.

- Use to fold a collection of structs into a single summary struct.
- Pass `omitKeyWhen` to drop properties whose reduced value matches a
  predicate.
- Does not mutate the inputs; returns a fresh object.

**Example** (Reducing a collection of structs)

```ts
import { Number, String, Struct } from "effect"

const R = Struct.makeReducer<{ readonly n: number; readonly s: string }>({
  n: Number.ReducerSum,
  s: String.ReducerConcat
})

const result = R.combineAll([
  { n: 1, s: "a" },
  { n: 2, s: "b" },
  { n: 3, s: "c" }
])
console.log(result) // { n: 6, s: "abc" }
```

**See**

- `makeCombiner` – like `makeReducer` but without an initial value

**Signature**

```ts
declare const makeReducer: <A>(reducers: { readonly [K in keyof A]: Reducer.Reducer<A[K]>; }, options?: { readonly omitKeyWhen?: ((a: A[keyof A]) => boolean) | undefined; }) => Reducer.Reducer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L921)

Since v4.0.0