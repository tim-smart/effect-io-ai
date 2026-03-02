Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.isTxHashSet

Checks if a value is a TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"
import * as HashSet from "effect/HashSet"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make(1, 2, 3)
  const hashSet = HashSet.make(1, 2, 3)
  const array = [1, 2, 3]

  console.log(TxHashSet.isTxHashSet(txSet)) // true
  console.log(TxHashSet.isTxHashSet(hashSet)) // false
  console.log(TxHashSet.isTxHashSet(array)) // false
  console.log(TxHashSet.isTxHashSet(null)) // false
})
```

**Signature**

```ts
declare const isTxHashSet: (u: unknown) => u is TxHashSet<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L289)

Since v2.0.0