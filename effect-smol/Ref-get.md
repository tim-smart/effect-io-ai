Package: `effect`<br />
Module: `Ref`<br />

## Ref.get

Gets the current value of the Ref.

**Example**

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Ref.make(42)
  const value = yield* Ref.get(ref)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const get: <A>(self: Ref<A>) => Effect.Effect<A, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L193)

Since v2.0.0