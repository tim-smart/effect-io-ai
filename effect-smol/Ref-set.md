Package: `effect`<br />
Module: `Ref`<br />

## Ref.set

Sets the value of the Ref to the specified value.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Ref.make(0)
  yield* Ref.set(ref, 42)
  const value = yield* Ref.get(ref)
  console.log(value) // 42
})

// Using multiple operations
const program2 = Effect.gen(function*() {
  const ref = yield* Ref.make(0)
  yield* Ref.set(ref, 100)
  const value = yield* Ref.get(ref)
  console.log(value) // 100
})
```

**Signature**

```ts
declare const set: (<A>(value: A) => (self: Ref<A>) => Effect.Effect<void>) & (<A>(self: Ref<A>, value: A) => Effect.Effect<void>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L221)

Since v2.0.0