Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.has

Checks if the TxHashSet contains the specified value.

**Example**

```ts
import { Effect, Equal, Hash, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make("apple", "banana", "cherry")

  console.log(yield* TxHashSet.has(txSet, "apple")) // true
  console.log(yield* TxHashSet.has(txSet, "grape")) // false

  // Works with any type that implements Equal
  class Person implements Equal.Equal {
    constructor(readonly name: string) {}

    [Equal.symbol](other: unknown) {
      return other instanceof Person && this.name === other.name
    }

    [Hash.symbol](): number {
      return Hash.string(this.name)
    }
  }

  const people = yield* TxHashSet.make(new Person("Alice"), new Person("Bob"))
  console.log(yield* TxHashSet.has(people, new Person("Alice"))) // true
})
```

**Signature**

```ts
declare const has: { <V>(value: V): (self: TxHashSet<V>) => Effect.Effect<boolean>; <V>(self: TxHashSet<V>, value: V): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L402)

Since v2.0.0