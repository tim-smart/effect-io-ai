Package: `effect`<br />
Module: `Ref`<br />

## Ref.make

Creates a new Ref with the specified initial value.

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
declare const make: <A>(value: A) => Effect.Effect<Ref<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L174)

Since v2.0.0