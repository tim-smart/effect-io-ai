# catchTag

Catches and handles specific errors by their `_tag` field, which is used as a
discriminator.

**When to Use**

`catchTag` is useful when your errors are tagged with a readonly `_tag` field
that identifies the error type. You can use this function to handle specific
error types by matching the `_tag` value. This allows for precise error
handling, ensuring that only specific errors are caught and handled.

The error type must have a readonly `_tag` field to use `catchTag`. This
field is used to identify and match errors.

To import and use `catchTag` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchTag
undefined

**Example**

```ts
// Title: Handling Errors by Tag
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
  // Only handle HttpError errors
  Effect.catchTag("HttpError", (_HttpError) => Effect.succeed("Recovering from HttpError"))
)
```

**Signature**

```ts
export declare const catchTag: {
  <K extends E extends { _tag: string } ? E["_tag"] : never, E, A1, E1, R1>(
    k: K,
    f: (e: NoInfer<Extract<E, { _tag: K }>>) => Effect<A1, E1, R1>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A1 | A, E1 | Exclude<E, { _tag: K }>, R1 | R>
  <A, E, R, K extends E extends { _tag: string } ? E["_tag"] : never, R1, E1, A1>(
    self: Effect<A, E, R>,
    k: K,
    f: (e: Extract<E, { _tag: K }>) => Effect<A1, E1, R1>
  ): Effect<A | A1, E1 | Exclude<E, { _tag: K }>, R | R1>
}
```
