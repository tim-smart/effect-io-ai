Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchAll

Handles all errors in an effect by providing a fallback effect.

**Details**

This function catches any errors that may occur during the execution of an
effect and allows you to handle them by specifying a fallback effect. This
ensures that the program continues without failing by recovering from errors
using the provided fallback logic.

**Note**: This function only handles recoverable errors. It will not recover
from unrecoverable defects.

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
const recovered = program.pipe(
  Effect.catchAll((error) =>
    Effect.succeed(`Recovering from ${error._tag}`)
  )
)
```

**See**

- `catchAllCause` for a version that can recover from both
recoverable and unrecoverable errors.

**Signature**

```ts
declare const catchAll: { <E, A2, E2, R2>(f: (e: E) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<A2, E2, R2>): Effect<A2 | A, E2, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3401)

Since v2.0.0