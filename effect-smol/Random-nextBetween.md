Package: `effect`<br />
Module: `Random`<br />

## Random.nextBetween

Generates a random number between `min` (inclusive) and `max` (inclusive).

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const randomDouble = yield* Random.nextBetween(0, 1)
  console.log("Random double: ", randomDouble)
})
```

**Signature**

```ts
declare const nextBetween: (min: number, max: number) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L132)

Since v4.0.0