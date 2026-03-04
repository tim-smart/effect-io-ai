Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchEager

An optimized version of `catch` that checks if an effect is already resolved
and applies the catch function eagerly when possible.

**When to Use**

`catchEager` provides better performance for effects that are already resolved
by applying the error recovery immediately instead of deferring it through
the effect pipeline.

**Behavior**

- For **Success effects**: Returns the success as-is (no error to catch)
- For **Failure effects**: Applies the catch function immediately to the error
- For **Pending effects**: Falls back to the regular `catch` behavior

**Example**

```ts
import { Effect } from "effect"

// For resolved failure effects, the catch function is applied immediately
const failed = Effect.fail("original error")
const recovered = Effect.catchEager(
  failed,
  (err: string) => Effect.succeed(`recovered from: ${err}`)
) // Applied eagerly

// For success effects, returns success as-is
const success = Effect.succeed(42)
const unchanged = Effect.catchEager(
  success,
  (err: string) => Effect.succeed(`recovered from: ${err}`)
) // Returns success as-is

// For pending effects, behaves like regular catch
const pending = Effect.delay(Effect.fail("error"), "100 millis")
const recoveredPending = Effect.catchEager(
  pending,
  (err: string) => Effect.succeed(`recovered from: ${err}`)
) // Uses regular catch
```

**Signature**

```ts
declare const catchEager: { <E, B, E2, R2>(f: (e: NoInfer<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | B, E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, f: (e: NoInfer<E>) => Effect<B, E2, R2>): Effect<A | B, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14605)

Since v4.0.0