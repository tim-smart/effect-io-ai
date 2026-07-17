Package: `effect`<br />
Module: `Ref`<br />

## Ref.Ref

A mutable reference that provides atomic read, write, and update operations.

**When to use**

Use to keep shared mutable state that is read and updated inside Effect
programs.

**Details**

A `Ref` is a thread-safe mutable reference type for shared state. It supports
simple read and write operations as well as atomic transformations.

**Example** (Reading and updating a ref)

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

**See**

- `make` for creating a `Ref`
- `get` for reading the current value
- `set` for replacing the current value

**Signature**

```ts
export interface Ref<in out A> extends Ref.Variance<A>, Pipeable {
  readonly ref: MutableRef.MutableRef<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ref.ts#L65)

Since v2.0.0