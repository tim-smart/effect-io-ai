Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchSome

Catches and recovers from specific types of errors, allowing you to attempt
recovery only for certain errors.

**Details**

`catchSome` lets you selectively catch and handle errors of certain
types by providing a recovery effect for specific errors. If the error
matches a condition, recovery is attempted; if not, it doesn't affect the
program. This function doesn't alter the error type, meaning the error type
remains the same as in the original effect.

**Example** (Handling Specific Errors with Effect.catchSome)

```ts
import { Effect, Random, Option } from "effect"

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

//      ┌─── Effect<string, HttpError | ValidationError, never>
//      ▼
const recovered = program.pipe(
  Effect.catchSome((error) => {
    // Only handle HttpError errors
    if (error._tag === "HttpError") {
      return Option.some(Effect.succeed("Recovering from HttpError"))
    } else {
      return Option.none()
    }
  })
)
```

**See**

- `catchIf` for a version that allows you to recover from errors based on a predicate.

**Signature**

```ts
declare const catchSome: { <E, A2, E2, R2>(pf: (e: NoInfer<E>) => Option.Option<Effect<A2, E2, R2>>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, pf: (e: NoInfer<E>) => Option.Option<Effect<A2, E2, R2>>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3723)

Since v2.0.0