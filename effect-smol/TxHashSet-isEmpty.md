Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.isEmpty

Checks if the TxHashSet is empty.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const empty = yield* TxHashSet.empty<string>()
  console.log(yield* TxHashSet.isEmpty(empty)) // true

  const nonEmpty = yield* TxHashSet.make("a")
  console.log(yield* TxHashSet.isEmpty(nonEmpty)) // false
})
```

**Signature**

```ts
declare const isEmpty: <V>(self: TxHashSet<V>) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L461)

Since v2.0.0