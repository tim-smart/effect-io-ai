Package: `effect`<br />
Module: `Ref`<br />

## Ref.getAndUpdate

Atomically gets the current value of the Ref and updates it with the given function.

Returns the value that was in the Ref before the update.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(10)

  // Get current value and update it atomically
  const previous = yield* Ref.getAndUpdate(counter, (n) => n * 2)
  console.log(previous) // 10

  const current = yield* Ref.get(counter)
  console.log(current) // 20
})
```

**Signature**

```ts
declare const getAndUpdate: (<A>(f: (a: A) => A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, f: (a: A) => A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L284)

Since v2.0.0