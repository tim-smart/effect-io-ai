Package: `effect`<br />
Module: `Ref`<br />

## Ref.update

Atomically updates the value of the Ref using the given function.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(5)

  // Update the value
  yield* Ref.update(counter, (n) => n * 2)

  const value = yield* Ref.get(counter)
  console.log(value) // 10
})

// Using multiple operations
const program2 = Effect.gen(function*() {
  const counter = yield* Ref.make(5)
  yield* Ref.update(counter, (n: number) => n + 10)
  const value = yield* Ref.get(counter)
  console.log(value) // 15
})
```

**Signature**

```ts
declare const update: (<A>(f: (a: A) => A) => (self: Ref<A>) => Effect.Effect<void>) & (<A>(self: Ref<A>, f: (a: A) => A) => Effect.Effect<void>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L530)

Since v2.0.0