Package: `effect`<br />
Module: `Effect`<br />

## Effect.flatMapEager

Applies `flatMap` eagerly when an effect is already resolved.

**When to use**

Use when an already-resolved successful effect should bind immediately to the
next effect while pending effects still use regular flat mapping.

**Details**

Success effects apply the flatMap function immediately. Failure effects pass
through unchanged, and pending effects fall back to regular `flatMap`
behavior.

**Example** (Flat mapping eagerly when possible)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L15263)

Since v4.0.0