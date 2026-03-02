Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.some

Tests whether at least one value in the TxHashSet satisfies the predicate.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const numbers = yield* TxHashSet.make(1, 2, 3, 4, 5)

  console.log(yield* TxHashSet.some(numbers, (n) => n > 3)) // true
  console.log(yield* TxHashSet.some(numbers, (n) => n > 10)) // false

  const empty = yield* TxHashSet.empty<number>()
  console.log(yield* TxHashSet.some(empty, (n) => n > 0)) // false
})
```

**Signature**

```ts
declare const some: { <V>(predicate: Predicate<V>): (self: TxHashSet<V>) => Effect.Effect<boolean, never, Effect.Transaction>; <V>(self: TxHashSet<V>, predicate: Predicate<V>): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L669)

Since v2.0.0