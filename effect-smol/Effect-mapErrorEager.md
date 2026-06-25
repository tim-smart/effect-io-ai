Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapErrorEager

Applies `mapError` eagerly when an effect is already resolved.

**When to use**

Use when an already-resolved failed effect should apply an error
transformation immediately while pending effects still use regular error
mapping.

**Details**

Success effects pass through unchanged because there is no error to
transform. Failure effects apply the mapping function immediately, and
pending effects fall back to regular `mapError` behavior.

**Example** (Mapping errors eagerly when possible)

```ts
import { Effect } from "effect"

// For resolved failure effects, the error mapping is applied immediately
const failed = Effect.fail("original error")
const mapped = Effect.mapErrorEager(failed, (err: string) => `mapped: ${err}`) // Applied eagerly

// For pending effects, behaves like regular mapError
const pending = Effect.delay(Effect.fail("error"), "100 millis")
const mappedPending = Effect.mapErrorEager(
  pending,
  (err: string) => `mapped: ${err}`
) // Uses regular mapError
```

**Signature**

```ts
declare const mapErrorEager: { <E, E2>(f: (e: E) => E2): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>; <A, E, R, E2>(self: Effect<A, E, R>, f: (e: E) => E2): Effect<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L15228)

Since v4.0.0