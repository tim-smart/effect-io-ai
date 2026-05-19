Package: `effect`<br />
Module: `Effect`<br />

## Effect.retry

Retries typed failures from an effect according to a retry policy.

**Details**

The policy can be a `Schedule`, a schedule builder, or a `Retry.Options`
object using `schedule`, `times`, `while`, or `until`. If a retry eventually
succeeds, the returned effect succeeds with that value. If the policy stops
while the effect is still failing, the last failure is propagated.

Defects and interruptions are not retried as typed failures.

**When to Use**

Use `retry` when typed failures may be transient, such as network issues or
temporary resource unavailability.

**Example** (Usage)

```ts
import { Data, Effect, Schedule } from "effect"

class AttemptError extends Data.TaggedError("AttemptError")<{ readonly attempt: number }> {}

let attempt = 0
const task = Effect.callback<string, AttemptError>((resume) => {
  attempt++
  if (attempt <= 2) {
    resume(Effect.fail(new AttemptError({ attempt })))
  } else {
    resume(Effect.succeed("Success!"))
  }
})

const policy = Schedule.addDelay(Schedule.recurs(5), () => Effect.succeed("100 millis"))
const program = Effect.retry(task, policy)

Effect.runPromise(program).then(console.log)
// Output: "Success!" (after 2 retries)
```

**See**

- `retryOrElse` for a version that allows you to run a fallback.
- `repeat` if your retry condition is based on successful outcomes rather than errors.

**Signature**

```ts
declare const retry: { <E, O extends Retry.Options<E>>(options: O): <A, R>(self: Effect<A, E, R>) => Retry.Return<R, E, A, O>; <B, E, Error, Env>(policy: Schedule<B, NoInfer<E>, Error, Env>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | Error, R | Env>; <B, E, Error, Env>(builder: ($: <O, SE, R>(_: Schedule<O, NoInfer<E>, SE, R>) => Schedule<O, E, SE, R>) => Schedule<B, NoInfer<E>, Error, Env>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | Error, R | Env>; <A, E, R, O extends Retry.Options<E>>(self: Effect<A, E, R>, options: O): Retry.Return<R, E, A, O>; <A, E, R, B, Error, Env>(self: Effect<A, E, R>, policy: Schedule<B, NoInfer<E>, Error, Env>): Effect<A, E | Error, R | Env>; <A, E, R, B, Error, Env>(self: Effect<A, E, R>, builder: ($: <O, SE, R>(_: Schedule<O, NoInfer<E>, SE, R>) => Schedule<O, E, SE, R>) => Schedule<B, NoInfer<E>, Error, Env>): Effect<A, E | Error, R | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3707)

Since v2.0.0