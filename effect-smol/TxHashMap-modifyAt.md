Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.modifyAt

Updates the value for the specified key using an Option-based update function.

**Mutation behavior**: This function mutates the original TxHashMap by updating,
adding, or removing the key-value pair based on the function result. It does not
return a new TxHashMap reference.

**Example**

```ts
import { Effect, Option, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const storage = yield* TxHashMap.make<string, string | number>([
    "file1.txt",
    "content1"
  ], ["access_count", 0])

  // Increment counter or initialize to 1
  const updateFn = (opt: Option.Option<string | number>) =>
    Option.isSome(opt) && typeof opt.value === "number"
      ? Option.some(opt.value + 1)
      : Option.some(1)

  // Increment existing counter
  yield* TxHashMap.modifyAt(storage, "access_count", updateFn)
  const count1 = yield* TxHashMap.get(storage, "access_count")
  console.log(count1) // Option.some(1)

  // Increment existing counter again
  yield* TxHashMap.modifyAt(storage, "access_count", updateFn)
  const count2 = yield* TxHashMap.get(storage, "access_count")
  console.log(count2) // Option.some(2)

  // Remove by returning None
  yield* TxHashMap.modifyAt(storage, "file1.txt", () => Option.none())
  const hasFile = yield* TxHashMap.has(storage, "file1.txt")
  console.log(hasFile) // false
})
```

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: TxHashMap<K, V>) => Effect.Effect<void, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L758)

Since v2.0.0