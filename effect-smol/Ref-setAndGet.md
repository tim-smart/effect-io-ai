Package: `effect`<br />
Module: `Ref`<br />

## Ref.setAndGet

Atomically sets the value of the Ref to the specified value and returns the new value.

This is useful when you want to set a value and immediately get it back in one atomic operation.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Ref.make(10)

  // Set new value and get it back in one operation
  const newValue = yield* Ref.setAndGet(ref, 42)
  console.log(newValue) // 42

  // Verify the ref contains the new value
  const current = yield* Ref.get(ref)
  console.log(current) // 42
})

// Useful for sequential operations
const program2 = Effect.gen(function*() {
  const counter = yield* Ref.make(0)

  const newValue = yield* Ref.setAndGet(counter, 20)
  console.log(newValue) // 20
})
```

**Signature**

```ts
declare const setAndGet: (<A>(value: A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, value: A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L380)

Since v2.0.0