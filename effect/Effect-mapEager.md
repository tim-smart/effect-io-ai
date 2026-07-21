Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapEager

Applies `map` eagerly when an effect is already resolved.

**When to use**

Use when an already-resolved effect should apply a success transformation
immediately while pending effects still use regular mapping.

**Details**

Success effects apply the mapping function immediately. Failure effects pass
through unchanged, and pending effects fall back to regular `map` behavior.

**Example** (Mapping already completed effects)

```ts
import { Effect } from "effect"

// For resolved effects, the mapping is applied immediately
const resolved = Effect.succeed(5)
const mapped = Effect.mapEager(resolved, (n) => n * 2) // Applied eagerly

// For pending effects, behaves like regular map
const pending = Effect.delay(Effect.succeed(5), "100 millis")
const mappedPending = Effect.mapEager(pending, (n) => n * 2) // Uses regular map
```

**Signature**

```ts
declare const mapEager: { <A, B>(f: (a: A) => B): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A, E, R, B>(self: Effect<A, E, R>, f: (a: A) => B): Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L15287)

Since v4.0.0