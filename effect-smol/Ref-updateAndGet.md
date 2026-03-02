Package: `effect`<br />
Module: `Ref`<br />

## Ref.updateAndGet

Atomically updates the value of the Ref using the given function and returns the new value.

**Example**

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

**Signature**

```ts
declare const updateAndGet: (<A>(f: (a: A) => A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, f: (a: A) => A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L561)

Since v2.0.0