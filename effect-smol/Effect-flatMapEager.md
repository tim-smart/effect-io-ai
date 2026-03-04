Package: `effect`<br />
Module: `Effect`<br />

## Effect.flatMapEager

An optimized version of `flatMap` that checks if an effect is already resolved
and applies the flatMap function eagerly when possible.

**When to Use**

`flatMapEager` provides better performance for effects that are already resolved
by applying the transformation immediately instead of deferring it through
the effect pipeline.

**Behavior**

- For **Success effects**: Applies the flatMap function immediately to the value
- For **Failure effects**: Returns the failure as-is without applying the flatMap
- For **Pending effects**: Falls back to the regular `flatMap` behavior

**Example**

```ts
import { Effect } from "effect"

// For resolved effects, the flatMap is applied immediately
const resolved = Effect.succeed(5)
const flatMapped = Effect.flatMapEager(resolved, (n) => Effect.succeed(n * 2)) // Applied eagerly

// For pending effects, behaves like regular flatMap
const pending = Effect.delay(Effect.succeed(5), "100 millis")
const flatMappedPending = Effect.flatMapEager(
  pending,
  (n) => Effect.succeed(n * 2)
) // Uses regular flatMap
```

**Signature**

```ts
declare const flatMapEager: { <A, B, E2, R2>(f: (a: A) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (a: A) => Effect<B, E2, R2>): Effect<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14555)

Since v4.0.0