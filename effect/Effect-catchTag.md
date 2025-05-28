Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchTag

Catches and handles specific errors by their `_tag` field, which is used as a
discriminator.

**When to Use**

`catchTag` is useful when your errors are tagged with a readonly `_tag` field
that identifies the error type. You can use this function to handle specific
error types by matching the `_tag` value. This allows for precise error
handling, ensuring that only specific errors are caught and handled.

The error type must have a readonly `_tag` field to use `catchTag`. This
field is used to identify and match errors.

**Example** (Handling Errors by Tag)

```ts
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
  Effect.catchTag("HttpError", (_HttpError) =>
    Effect.succeed("Recovering from HttpError")
  )
)
```

**See**

- `catchTags` for a version that allows you to handle multiple error
types at once.

**Signature**

```ts
declare const catchTag: { <E, const K extends RA.NonEmptyReadonlyArray<E extends { _tag: string; } ? E["_tag"] : never>, A1, E1, R1>(...args: [...tags: K, f: (e: Extract<NoInfer<E>, { _tag: K[number]; }>) => Effect<A1, E1, R1>]): <A, R>(self: Effect<A, E, R>) => Effect<A | A1, Exclude<E, { _tag: K[number]; }> | E1, R | R1>; <A, E, R, const K extends RA.NonEmptyReadonlyArray<E extends { _tag: string; } ? E["_tag"] : never>, R1, E1, A1>(self: Effect<A, E, R>, ...args: [...tags: K, f: (e: Extract<NoInfer<E>, { _tag: K[number]; }>) => Effect<A1, E1, R1>]): Effect<A | A1, Exclude<E, { _tag: K[number]; }> | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3882)

Since v2.0.0