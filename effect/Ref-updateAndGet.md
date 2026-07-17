Package: `effect`<br />
Module: `Ref`<br />

## Ref.updateAndGet

Updates the value of the Ref atomically using the given function and returns the new value.

**When to use**

Use to apply a `Ref` state transition and return the new stored value.

**Example** (Updating and returning the new value)

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(5)

  // Update and get the new value in one operation
  const newValue = yield* Ref.updateAndGet(counter, (n) => n * 3)
  console.log(newValue) // 15

  // Verify the ref contains the new value
  const current = yield* Ref.get(counter)
  console.log(current) // 15
})
```

**See**

- `update` for updating without returning the new value
- `getAndUpdate` for returning the previous value instead

**Signature**

```ts
declare const updateAndGet: (<A>(f: (a: A) => A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, f: (a: A) => A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ref.ts#L651)

Since v2.0.0