Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.duration

Returns a schedule that recurs once after the specified duration.

**When to use**

Use when you need one delayed recurrence. Use `during` to keep
recurring until a duration has elapsed.

**Details**

The schedule outputs the configured duration for its first recurrence and
then completes.

**Example** (Recurring once after a duration)

```ts
import { Console, Effect, Schedule } from "effect"

const program = Effect.repeat(
  Console.log("runs again after one second"),
  Schedule.duration("1 second")
)
```

**See**

- `during` for recurring until a duration has elapsed

**Signature**

```ts
declare const duration: (durationInput: Duration.Input) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1572)

Since v2.0.0