Package: `effect`<br />
Module: `Random`<br />

## Random.nextIntBetween

Generates a random integer between `min` and `max`.

The lower bound is rounded up with `Math.ceil` and the upper bound is
rounded down with `Math.floor`. By default the range is inclusive; set
`options.halfOpen: true` to exclude the upper bound.

**Example** (Generating a bounded random integer)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L165)

Since v4.0.0