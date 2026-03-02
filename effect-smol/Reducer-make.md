Package: `effect`<br />
Module: `Reducer`<br />

## Reducer.make

Creates a `Reducer` from a `combine` function and an `initialValue`.

When to use:
- You have a custom reducing operation not covered by a pre-built reducer.
- You want to provide an optimized `combineAll` (e.g. short-circuiting on
  a known absorbing element like `0` for multiplication).

Behavior:
- If `combineAll` is omitted, a default left-to-right fold starting from
  `initialValue` is used.
- If `combineAll` is provided, it completely replaces the default fold.
- Pure – the returned reducer does not mutate its arguments.

**Example** (multiplication with short-circuit)

```ts
import { Reducer } from "effect"

const Product = Reducer.make<number>(
  (a, b) => a * b,
  1,
  (collection) => {
    let acc = 1
    for (const n of collection) {
      if (n === 0) return 0
      acc *= n
    }
    return acc
  }
)

console.log(Product.combineAll([2, 3, 4]))
// Output: 24

console.log(Product.combineAll([2, 0, 4]))
// Output: 0
```

**See**

- `Reducer` – the interface this creates
- `flip` – reverse the argument order

**Signature**

```ts
declare const make: <A>(combine: (self: A, that: A) => A, initialValue: A, combineAll?: (collection: Iterable<A>) => A) => Reducer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reducer.ts#L161)

Since v4.0.0