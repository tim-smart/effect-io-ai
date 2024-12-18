# catchAll

Handles all errors in an effect by providing a fallback effect.

**Details**

This function catches any errors that may occur during the execution of an
effect and allows you to handle them by specifying a fallback effect. This
ensures that the program continues without failing by recovering from errors
using the provided fallback logic.

**Note**: This function only handles recoverable errors. It will not recover
from unrecoverable defects.

To import and use `catchAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchAll
```

**Example**

```ts
// Title: Providing Recovery Logic for Recoverable Errors
import { Effect, Random } from "effect"

class HttpError {
  readonly _tag = "HttpError"
}

class ValidationError {
  readonly _tag = "ValidationError"
}

//      ┌─── Effect<string, HttpError | ValidationError, never>
//      ▼
const program = Effect.gen(function* () {
  const n1 = yield* Random.next
  const n2 = yield* Random.next
  if (n1 < 0.5) {
    yield* Effect.fail(new HttpError())
  }
  if (n2 < 0.5) {
    yield* Effect.fail(new ValidationError())
  }
  return "some result"
})

//      ┌─── Effect<string, never, never>
//      ▼
const recovered = program.pipe(Effect.catchAll((error) => Effect.succeed(`Recovering from ${error._tag}`)))
```

**Signature**

```ts
export declare const catchAll: {
  <E, A2, E2, R2>(f: (e: E) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<A2, E2, R2>): Effect<A2 | A, E2, R2 | R>
}
```
