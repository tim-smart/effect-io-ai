# either

Transforms an `Effect` into one that encapsulates both success and failure
using the `Either` data type.

**Details**

`either` takes an effect that could potentially fail and converts it
into an effect that always succeeds but with the result inside an `Either`.
The `Either` can either be a `Left` (representing failure) or a `Right`
(representing success). This allows you to handle both cases explicitly
without causing the effect to fail.

The resulting effect cannot fail because failure is now represented inside
the `Either` type.

To import and use `either` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.either
undefined

**Example**

```ts
import { Effect, Either, Random } from "effect"

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
const recovered = Effect.gen(function* () {
  //      ┌─── Either<string, HttpError | ValidationError>
  //      ▼
  const failureOrSuccess = yield* Effect.either(program)
  return Either.match(failureOrSuccess, {
    onLeft: (error) => `Recovering from ${error._tag}`,
    onRight: (value) => value // Do nothing in case of success
  })
})
```

**Signature**

```ts
export declare const either: <A, E, R>(self: Effect<A, E, R>) => Effect<Either.Either<A, E>, never, R>
```
