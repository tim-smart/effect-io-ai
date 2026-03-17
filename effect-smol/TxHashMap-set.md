Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.set

Sets the value for the specified key in the TxHashMap.

**Mutation behavior**: This function mutates the original TxHashMap by updating
its internal state. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const inventory = yield* TxHashMap.make(
    ["laptop", 5],
    ["mouse", 20]
  )

  // Update existing item
  yield* TxHashMap.set(inventory, "laptop", 3)
  const laptopStock = yield* TxHashMap.get(inventory, "laptop")
  console.log(laptopStock) // Option.some(3)

  // Add new item
  yield* TxHashMap.set(inventory, "keyboard", 15)
  const keyboardStock = yield* TxHashMap.get(inventory, "keyboard")
  console.log(keyboardStock) // Option.some(15)

  // Use with pipe syntax
  yield* TxHashMap.set("tablet", 8)(inventory)
})
```

**Signature**

```ts
declare const set: { <K, V>(key: K, value: V): (self: TxHashMap<K, V>) => Effect.Effect<void, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, key: K, value: V): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L407)

Since v2.0.0