Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchEffect

Handles both success and failure cases of an effect, allowing for additional
side effects.

**Details**

The `matchEffect` function is similar to `match`, but it enables you to
perform side effects in the handlers for both success and failure outcomes.

**When to Use**

This is useful when you need to execute additional actions, like logging or
notifying users, based on whether an effect succeeds or fails.

**Example** (Handling Both Success and Failure Cases with Side Effects)

```ts
import { Effect } from "effect"

const success: Effect.Effect<number, Error> = Effect.succeed(42)
const failure: Effect.Effect<number, Error> = Effect.fail(
  new Error("Uh oh!")
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

**See**

- `match` if you don't need side effects and only want to handle the
result or failure.

**Signature**

```ts
declare const matchEffect: { <E, A2, E2, R2, A, A3, E3, R3>(options: { readonly onFailure: (e: E) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(self: Effect<A, E, R>, options: { readonly onFailure: (e: E) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): Effect<A2 | A3, E2 | E3, R2 | R3 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10767)

Since v2.0.0