Package: `effect`<br />
Module: `Random`<br />

## Random.fixed

Constructs the `Random` service from an array of literal values.
The service will cycle through the provided values in order when generating random values.
This constructor is useful for creating deterministic sequences for testing or when specific values need to be returned.

**Example**

```ts
import { Effect, Random } from "effect"

Effect.gen(function* () {
  console.log(yield* Random.next) // 0.2
  console.log(yield* Random.next) // 0.5
  console.log(yield* Random.next) // 0.8
  console.log(yield* Random.next) // 0.2 (cycles back)
}).pipe(Effect.withRandom(Random.fixed([0.2, 0.5, 0.8])))
```

**Example**

```ts
import { Effect, Random } from "effect"

Effect.gen(function* () {
  console.log(yield* Random.nextBoolean) // true
  console.log(yield* Random.nextBoolean) // false
  console.log(yield* Random.nextBoolean) // true
}).pipe(Effect.withRandom(Random.fixed([true, false, true])))
```

**Signature**

```ts
declare const fixed: <const T extends Array.NonEmptyArray<any>>(values: T) => Random
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Random.ts#L204)

Since v3.11.0