Package: `effect`<br />
Module: `index`<br />

## index.Ref

Re-exports all named exports from the "./Ref.ts" module as `Ref`.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  // Create a ref with initial value
  const counter = yield* Ref.make(0)

  // Atomic operations
  yield* Ref.update(counter, (n) => n + 1)
  yield* Ref.update(counter, (n) => n * 2)

  const value = yield* Ref.get(counter)
  console.log(value) // 2

  // Atomic modify with return value
  const previous = yield* Ref.getAndSet(counter, 100)
  console.log(previous) // 2
})
```

**Signature**

```ts
export * as Ref from "./Ref.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L3139)

Since v2.0.0