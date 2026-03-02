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

**Example**

```ts
import { Effect } from "effect"

class NetworkError {
  readonly _tag = "NetworkError"
  constructor(readonly message: string) {}
}

class ValidationError {
  readonly _tag = "ValidationError"
  constructor(readonly message: string) {}
}

declare const task: Effect.Effect<string, NetworkError | ValidationError>

const program = Effect.catchTag(
  task,
  "NetworkError",
  (error) => Effect.succeed(`Recovered from network error: ${error.message}`)
)
```

**Signature**

```ts
declare const catchTag: { <const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, E, A1, E1, R1, A2 = never, E2 = ExcludeTag<E, K extends readonly [string, ...string[]] ? K[number] : K>, R2 = never>(k: K, f: (e: ExtractTag<NoInfer<E>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A2, E2, R2>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A1 | A2, E1 | E2, R | R1 | R2>; <A, E, R, const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, R1, E1, A1, A2 = never, E2 = ExcludeTag<E, K extends readonly [string, ...string[]] ? K[number] : K>, R2 = never>(self: Effect<A, E, R>, k: K, f: (e: ExtractTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A2, E2, R2>) | undefined): Effect<A | A1 | A2, E1 | E2, R | R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2746)

Since v2.0.0