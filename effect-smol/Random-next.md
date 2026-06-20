Package: `effect`<br />
Module: `Random`<br />

## Random.next

Generates a random number between 0 (inclusive) and 1 (exclusive).

**When to use**

Use to generate a pseudo-random floating-point number in the standard
`[0, 1)` range.

**Example** (Generating a random number)

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const randomDouble = yield* Random.next
  console.log("Random double:", randomDouble)
})
```

**Signature**

```ts
declare const next: Effect.Effect<number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L83)

Since v2.0.0