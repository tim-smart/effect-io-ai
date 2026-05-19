Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchEffect

Handles both success and failure by running effectful handlers.

**Details**

Use `matchEffect` when either branch needs to return an `Effect`, such as
performing logging, recovery, notification, or other effectful work. The
returned effect succeeds or fails according to the handler that is run.

**When to Use**

Use this when the failure or success branch must run additional effects.

**See**

- `match` if you don't need side effects and only want to handle the
result or failure.

**Example** (Handling Both Success and Failure Cases with Side Effects)

```ts
import { Data, Effect } from "effect"

class ExampleError extends Data.TaggedError("ExampleError")<{ readonly message: string }> {}

const success: Effect.Effect<number, ExampleError> = Effect.succeed(42)
const failure: Effect.Effect<number, ExampleError> = Effect.fail(
  new ExampleError({ message: "Uh oh!" })
)

const program1 = Effect.matchEffect(success, {
  onFailure: (error) =>
    Effect.succeed(`failure: ${error.message}`).pipe(
      Effect.tap(Effect.log)
    ),
  onSuccess: (value) =>
    Effect.succeed(`success: ${value}`).pipe(Effect.tap(Effect.log))
})

console.log(Effect.runSync(program1))
// Output:
// timestamp=... level=INFO fiber=#0 message="success: 42"
// success: 42

const program2 = Effect.matchEffect(failure, {
  onFailure: (error) =>
    Effect.succeed(`failure: ${error.message}`).pipe(
      Effect.tap(Effect.log)
    ),
  onSuccess: (value) =>
    Effect.succeed(`success: ${value}`).pipe(Effect.tap(Effect.log))
})

console.log(Effect.runSync(program2))
// Output:
// timestamp=... level=INFO fiber=#1 message="failure: Uh oh!"
// failure: Uh oh!
```

**Signature**

```ts
declare const matchEffect: { <E, A2, E2, R2, A, A3, E3, R3>(options: { readonly onFailure: (e: E) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(self: Effect<A, E, R>, options: { readonly onFailure: (e: E) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): Effect<A2 | A3, E2 | E3, R2 | R3 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5187)

Since v2.0.0