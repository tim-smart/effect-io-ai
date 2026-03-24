Package: `effect`<br />
Module: `Struct`<br />

## Struct.makeCombiner

Creates a `Combiner` for a struct shape by providing a `Combiner` for each
property. When two structs are combined, each property is merged using its
corresponding combiner.

- Use when you need to merge two structs of the same shape (e.g., summing
  counters, concatenating strings).
- Pass `omitKeyWhen` to drop properties whose merged value matches a
  predicate (e.g., omit zero counters).
- Does not mutate the inputs; returns a fresh object.

**Example** (Combining struct properties)

```ts
import { Number, String, Struct } from "effect"

const C = Struct.makeCombiner<{ readonly n: number; readonly s: string }>({
  n: Number.ReducerSum,
  s: String.ReducerConcat
})

const result = C.combine({ n: 1, s: "hello" }, { n: 2, s: " world" })
console.log(result) // { n: 3, s: "hello world" }
```

**See**

- `makeReducer` – like `makeCombiner` but with an initial value

**Signature**

```ts
declare const makeCombiner: <A>(combiners: { readonly [K in keyof A]: Combiner.Combiner<A[K]>; }, options?: { readonly omitKeyWhen?: ((a: A[keyof A]) => boolean) | undefined; }) => Combiner.Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L873)

Since v4.0.0