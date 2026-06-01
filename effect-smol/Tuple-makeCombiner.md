Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.makeCombiner

Creates a `Combiner` for a tuple shape by providing a `Combiner` for each
position. When two tuples are combined, each element is merged using its
corresponding combiner.

**When to use**

Use when you need to merge two same-shape tuples by combining each position
independently, such as summing counters or concatenating strings.

**Example** (Combining tuple elements)

```ts
import { Number, String, Tuple } from "effect"

const C = Tuple.makeCombiner<readonly [number, string]>([
  Number.ReducerSum,
  String.ReducerConcat
])

const result = C.combine([1, "hello"], [2, " world"])
console.log(result) // [3, "hello world"]
```

**See**

- `makeReducer` – like `makeCombiner` but with an initial value

**Signature**

```ts
declare const makeCombiner: <A extends ReadonlyArray<unknown>>(combiners: { readonly [K in keyof A]: Combiner.Combiner<A[K]>; }) => Combiner.Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L741)

Since v4.0.0