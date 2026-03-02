Package: `effect`<br />
Module: `Random`<br />

## Random.nextBoolean

Generates a random boolean value.

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const value = yield* Random.nextBoolean
  console.log("Random boolean:", value)
})
```

**Signature**

```ts
declare const nextBoolean: Effect.Effect<boolean, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L95)

Since v4.0.0