Package: `effect`<br />
Module: `Ref`<br />

## Ref.getAndUpdate

Gets the current value of the Ref, updates it with the given function, and returns the previous value atomically.

**When to use**

Use to derive a new `Ref` value while returning the previous value.

**Example** (Updating and returning the previous value)

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

**See**

- `update` for updating without returning the previous value
- `updateAndGet` for returning the new value instead

**Signature**

```ts
declare const getAndUpdate: (<A>(f: (a: A) => A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, f: (a: A) => A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L364)

Since v2.0.0