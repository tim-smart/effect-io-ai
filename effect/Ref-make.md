Package: `effect`<br />
Module: `Ref`<br />

## Ref.make

Creates a new Ref with the specified initial value.

**When to use**

Use to create a `Ref` for shared mutable state inside an Effect program.

**Example** (Creating a ref)

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Ref.make(42)
  const value = yield* Ref.get(ref)
  console.log(value) // 42
})
```

**See**

- `makeUnsafe` for synchronous construction outside Effect code

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<Ref<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ref.ts#L186)

Since v2.0.0