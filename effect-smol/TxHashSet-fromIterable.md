Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.fromIterable

Creates a TxHashSet from an iterable collection of values.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const fromArray = yield* TxHashSet.fromIterable(["a", "b", "c", "b", "a"])
  console.log(yield* TxHashSet.size(fromArray)) // 3

  const fromSet = yield* TxHashSet.fromIterable(new Set([1, 2, 3]))
  console.log(yield* TxHashSet.size(fromSet)) // 3

  const fromString = yield* TxHashSet.fromIterable("hello")
  const values = yield* TxHashSet.toHashSet(fromString)
  console.log(Array.from(values)) // ["h", "e", "l", "o"]
})
```

**Signature**

```ts
declare const fromIterable: <V>(values: Iterable<V>) => Effect.Effect<TxHashSet<V>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L228)

Since v2.0.0