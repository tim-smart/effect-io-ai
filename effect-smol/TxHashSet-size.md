Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.size

Returns the number of values in the TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const empty = yield* TxHashSet.empty<string>()
  console.log(yield* TxHashSet.size(empty)) // 0

  const small = yield* TxHashSet.make("a", "b")
  console.log(yield* TxHashSet.size(small)) // 2

  const fromIterable = yield* TxHashSet.fromIterable(["x", "y", "z", "x", "y"])
  console.log(yield* TxHashSet.size(fromIterable)) // 3 (duplicates ignored)
})
```

**Signature**

```ts
declare const size: <V>(self: TxHashSet<V>) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L436)

Since v2.0.0