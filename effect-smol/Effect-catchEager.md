Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchEager

Applies `catch` eagerly when an effect is already resolved.

**When to use**

Use when an already-resolved failed effect should recover immediately while
pending effects still use regular error recovery.

**Details**

Success effects pass through unchanged because there is no error to catch.
Failure effects apply the catch function immediately, and pending effects
fall back to regular `catch` behavior.

**Example** (Catching failures eagerly when possible)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L15188)

Since v4.0.0