Package: `effect`<br />
Module: `Effect`<br />

## Effect.withRandomFixed

Executes the specified effect with a `Random` service that cycles through
a provided array of values.

**Example**

```ts
import { Effect, Random } from "effect"

Effect.gen(function*() {
  console.log(yield* Random.next) // 0.2
  console.log(yield* Random.next) // 0.5
  console.log(yield* Random.next) // 0.8
}).pipe(Effect.withRandomFixed([0.2, 0.5, 0.8]))
```

**Signature**

```ts
declare const withRandomFixed: { <T extends RA.NonEmptyArray<any>>(values: T): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <T extends RA.NonEmptyArray<any>, A, E, R>(effect: Effect<A, E, R>, values: T): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11593)

Since v3.11.0