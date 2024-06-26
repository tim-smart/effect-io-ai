# tapErrorTag

Specifically inspects a failure with a particular tag, allowing focused error handling.

To import and use `tapErrorTag` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapErrorTag
```

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

// Create an effect that is designed to fail, simulating an occurrence of a network error
const task: Effect.Effect<number, NetworkError | ValidationError> = Effect.fail(new NetworkError(504))

// Apply an error handling function only to errors tagged as "NetworkError",
// and log the corresponding status code of the error.
const tapping = Effect.tapErrorTag(task, "NetworkError", (error) => Console.log(`expected error: ${error.statusCode}`))

Effect.runFork(tapping)
// Output:
// expected error: 504
```

**Signature**

```ts
export declare const tapErrorTag: {
  <K extends E extends { _tag: string } ? E["_tag"] : never, E, A1, E1, R1>(
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<A1, E1, R1>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R1 | R>
  <A, E, R, K extends E extends { _tag: string } ? E["_tag"] : never, A1, E1, R1>(
    self: Effect<A, E, R>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<A1, E1, R1>
  ): Effect<A, E | E1, R | R1>
}
```
