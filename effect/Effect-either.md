Package: `effect`<br />
Module: `Effect`<br />

## Effect.either

Encapsulates both success and failure of an `Effect` into an `Either` type.

**Details**

This function converts an effect that may fail into an effect that always
succeeds, wrapping the outcome in an `Either` type. The result will be
`Either.Left` if the effect fails, containing the recoverable error, or
`Either.Right` if it succeeds, containing the result.

Using this function, you can handle recoverable errors explicitly without
causing the effect to fail. This is particularly useful in scenarios where
you want to chain effects and manage both success and failure in the same
logical flow.

It's important to note that unrecoverable errors, often referred to as
"defects," are still thrown and not captured within the `Either` type. Only
failures that are explicitly represented as recoverable errors in the effect
are encapsulated.

The resulting effect cannot fail directly because all recoverable failures
are represented inside the `Either` type.

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

**See**

- `option` for a version that uses `Option` instead.
- `exit` for a version that encapsulates both recoverable errors and defects in an `Exit`.

**Signature**

```ts
declare const either: <A, E, R>(self: Effect<A, E, R>) => Effect<Either.Either<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8187)

Since v2.0.0