Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.isTxHashMap

Returns `true` if the specified value is a `TxHashMap`, `false` otherwise.

**Example** (Checking TxHashMap values)

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const txMap = yield* TxHashMap.make(["key", "value"])

  console.log(TxHashMap.isTxHashMap(txMap)) // true
  console.log(TxHashMap.isTxHashMap({})) // false
  console.log(TxHashMap.isTxHashMap(null)) // false
  console.log(TxHashMap.isTxHashMap("not a map")) // false

  // Useful for type guards in runtime checks
  const validateInput = (value: unknown) => {
    if (TxHashMap.isTxHashMap(value)) {
      // TypeScript now knows this is a TxHashMap
      return Effect.succeed("Valid TxHashMap")
    }
    return Effect.fail("Invalid input")
  }
})
```

**Signature**

```ts
declare const isTxHashMap: <K, V>(value: unknown) => value is TxHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1210)

Since v4.0.0