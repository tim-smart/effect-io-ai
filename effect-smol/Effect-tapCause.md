Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapCause

The `tapCause` function allows you to inspect the complete cause
of an error, including failures and defects.

This function is helpful when you need to log, monitor, or handle specific
error causes in your effects. It gives you access to the full error cause,
whether it's a failure, defect, or other exceptional conditions, without
altering the error or the overall result of the effect.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.tapErrorCause`

**Example**

```ts
import { Cause, Console, Effect } from "effect"

const task = Effect.fail("Something went wrong")

const program = Effect.tapCause(
  task,
  (cause) => Console.log(`Logging cause: ${Cause.squash(cause)}`)
)

Effect.runPromiseExit(program).then(console.log)
// Output: "Logging cause: Error: Something went wrong"
// Then: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const tapCause: { <E, X, E2, R2>(f: (cause: Cause.Cause<NoInfer<E>>) => Effect<X, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<E>) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3716)

Since v2.0.0