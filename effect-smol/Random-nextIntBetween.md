Package: `effect`<br />
Module: `Random`<br />

## Random.nextIntBetween

Generates a random number between `min` (inclusive) and `max` (inclusive).

Set `options.halfOpen: true` to generate in the half-open range
`[min, max)`.

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const diceRoll1 = yield* Random.nextIntBetween(1, 6)
  const diceRoll2 = yield* Random.nextIntBetween(1, 6, {
    halfOpen: true
  })
  const diceRoll3 = yield* Random.nextIntBetween(0, 10)
})
```

**Signature**

```ts
declare const nextIntBetween: (min: number, max: number, options?: { readonly halfOpen?: boolean; }) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L157)

Since v4.0.0