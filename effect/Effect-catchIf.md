# catchIf

Recovers from specific errors based on a predicate.

**When to Use**

`catchIf` works similarly to {@link catchSome}, but it allows you to
recover from errors by providing a predicate function. If the predicate
matches the error, the recovery effect is applied. This function doesn't
alter the error type, so the resulting effect still carries the original
error type unless a user-defined type guard is used to narrow the type.

To import and use `catchIf` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchIf
```

**Example**

```ts
// Title: Catching Specific Errors with a Predicate
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

//      ┌─── Effect<string, ValidationError, never>
//      ▼
const recovered = program.pipe(
  Effect.catchIf(
    // Only handle HttpError errors
    (error) => error._tag === "HttpError",
    () => Effect.succeed("Recovering from HttpError")
  )
)
```

**Signature**

```ts
export declare const catchIf: {
  <E, EB extends E, A2, E2, R2>(
    refinement: Refinement<NoInfer<E>, EB>,
    f: (e: EB) => Effect<A2, E2, R2>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | Exclude<E, EB>, R2 | R>
  <E, A2, E2, R2>(
    predicate: Predicate<NoInfer<E>>,
    f: (e: NoInfer<E>) => Effect<A2, E2, R2>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E | E2, R2 | R>
  <A, E, R, EB extends E, A2, E2, R2>(
    self: Effect<A, E, R>,
    refinement: Refinement<E, EB>,
    f: (e: EB) => Effect<A2, E2, R2>
  ): Effect<A | A2, E2 | Exclude<E, EB>, R | R2>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    predicate: Predicate<E>,
    f: (e: E) => Effect<A2, E2, R2>
  ): Effect<A | A2, E | E2, R | R2>
}
```
