Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.isSubset

Checks if a TxHashSet is a subset of another TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const small = yield* TxHashSet.make("a", "b")
  const large = yield* TxHashSet.make("a", "b", "c", "d")
  const other = yield* TxHashSet.make("x", "y")

  console.log(yield* TxHashSet.isSubset(small, large)) // true
  console.log(yield* TxHashSet.isSubset(large, small)) // false
  console.log(yield* TxHashSet.isSubset(small, other)) // false
  console.log(yield* TxHashSet.isSubset(small, small)) // true
})
```

**Signature**

```ts
declare const isSubset: { <V1>(that: TxHashSet<V1>): <V0>(self: TxHashSet<V0>) => Effect.Effect<boolean>; <V0, V1>(self: TxHashSet<V0>, that: TxHashSet<V1>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L634)

Since v2.0.0