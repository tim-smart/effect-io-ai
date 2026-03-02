Package: `effect`<br />
Module: `Random`<br />

## Random.withSeed

Seeds the pseudorandom number generator with the specified value.

Take care to select a seed wit hhigh entropy to avoid issues with the
quality of random number generation.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L266)

Since v4.0.0