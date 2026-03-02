Package: `effect`<br />
Module: `Ref`<br />

## Ref.Ref

A mutable reference that provides atomic read, write, and update operations.

Ref is a thread-safe mutable reference type that allows for atomic operations
on shared state. It supports both simple read/write operations and complex
atomic transformations.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  // Create a ref with initial value
  const counter = yield* Ref.make(0)

  // Read the current value
  const value = yield* Ref.get(counter)
  console.log(value) // 0

  // Update the value atomically
  yield* Ref.update(counter, (n) => n + 1)

  // Read the updated value
  const newValue = yield* Ref.get(counter)
  console.log(newValue) // 1
})
```

**Signature**

```ts
export interface Ref<in out A> extends Ref.Variance<A>, Pipeable {
  readonly ref: MutableRef.MutableRef<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L72)

Since v2.0.0