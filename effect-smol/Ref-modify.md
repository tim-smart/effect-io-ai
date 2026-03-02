Package: `effect`<br />
Module: `Ref`<br />

## Ref.modify

Atomically modifies the value of the Ref using the given function.

The function receives the current value and returns a tuple of [result, newValue].
The Ref is updated with the newValue and the result is returned.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(10)

  // Modify the ref and return some computation result
  const result = yield* Ref.modify(counter, (n) => [
    `Previous value was ${n}`, // Return value
    n * 2 // New ref value
  ])

  console.log(result) // "Previous value was 10"

  const current = yield* Ref.get(counter)
  console.log(current) // 20
})

// Example with more complex computation
const program2 = Effect.gen(function*() {
  const state = yield* Ref.make({ count: 0, total: 0 })

  const incremented = yield* Ref.modify(state, (s) => [
    s.count, // Return previous count
    { count: s.count + 1, total: s.total + s.count + 1 } // New state
  ])

  console.log(incremented) // 0
})
```

**Signature**

```ts
declare const modify: (<A, B>(f: (a: A) => readonly [B, A]) => (self: Ref<A>) => Effect.Effect<B>) & (<A, B>(self: Ref<A>, f: (a: A) => readonly [B, A]) => Effect.Effect<B>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L426)

Since v2.0.0