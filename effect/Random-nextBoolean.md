Package: `effect`<br />
Module: `Random`<br />

## Random.nextBoolean

Generates a random boolean value.

**When to use**

Use to make a pseudo-random true-or-false choice.

**Example** (Generating a random boolean)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Random.ts#L106)

Since v2.0.0