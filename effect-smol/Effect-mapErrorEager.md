Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapErrorEager

An optimized version of `mapError` that checks if an effect is already resolved
and applies the error mapping function eagerly when possible.

**When to Use**

`mapErrorEager` provides better performance for effects that are already resolved
by applying the error transformation immediately instead of deferring it through
the effect pipeline.

**Behavior**

- For **Success effects**: Returns the success as-is (no error to transform)
- For **Failure effects**: Applies the mapping function immediately to the error
- For **Pending effects**: Falls back to the regular `mapError` behavior

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14518)

Since v4.0.0