Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapErrorTag

Inspect errors matching a specific tag without altering the original effect.

**Details**

This function allows you to inspect and handle specific error types based on
their `_tag` property. It is particularly useful in applications where errors
are modeled with tagged types (e.g., union types with discriminating tags).
By targeting errors with a specific `_tag`, you can log or perform actions on
them while leaving the error channel and overall effect unchanged.

If the error doesn't match the specified tag, this function does nothing, and
the effect proceeds as usual.

**Example**

```ts
import { Effect, Console } from "effect"

class NetworkError {
  readonly _tag = "NetworkError"
  constructor(readonly statusCode: number) {}
}

class ValidationError {
  readonly _tag = "ValidationError"
  constructor(readonly field: string) {}
}

// Create a task that fails with a NetworkError
const task: Effect.Effect<number, NetworkError | ValidationError> =
  Effect.fail(new NetworkError(504))

// Use tapErrorTag to inspect only NetworkError types and log the status code
const tapping = Effect.tapErrorTag(task, "NetworkError", (error) =>
  Console.log(`expected error: ${error.statusCode}`)
)

Effect.runFork(tapping)
// Output:
// expected error: 504
```

**Signature**

```ts
declare const tapErrorTag: { <K extends E extends { _tag: string; } ? E["_tag"] : never, E, A1, E1, R1>(k: K, f: (e: NoInfer<Extract<E, { _tag: K; }>>) => Effect<A1, E1, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R1 | R>; <A, E, R, K extends E extends { _tag: string; } ? E["_tag"] : never, A1, E1, R1>(self: Effect<A, E, R>, k: K, f: (e: Extract<E, { _tag: K; }>) => Effect<A1, E1, R1>): Effect<A, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9739)

Since v2.0.0