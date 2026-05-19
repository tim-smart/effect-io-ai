Package: `effect`<br />
Module: `Random`<br />

## Random.withSeed

Seeds the pseudo-random number generator with the specified value.

Using the same seed produces the same random sequence, which is useful for
tests and reproducible simulations. Use an unpredictable seed when uniqueness
or unpredictability matters.

**Example** (Seeding random generation)

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const value1 = yield* Random.next
  const value2 = yield* Random.next
  console.log(value1, value2)
})

// Same seed produces same sequence
const seeded1 = program.pipe(Random.withSeed("my-seed"))
const seeded2 = program.pipe(Random.withSeed("my-seed"))

// Both will output identical values
Effect.runPromise(seeded1)
Effect.runPromise(seeded2)
```

**Signature**

```ts
declare const withSeed: { (seed: string | number): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, seed: string | number): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L245)

Since v4.0.0