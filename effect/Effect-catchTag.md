Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchTag

Catches and handles specific errors by their `_tag` field, which is used as a
discriminator.

**When to use**

Use when you need to recover from one specific tagged error in an effect
error channel.

**Details**

The error type must have a readonly `_tag` field. `catchTag` matches that
field and only handles errors with the requested tag.

**Example** (Handling a tagged error)

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

**See**

- `catchTags` for handling multiple tagged errors in one call
- `catchIf` for recovering from errors that match a predicate

**Signature**

```ts
declare const catchTag: { <const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, E, A1, E1, R1, A2 = unassigned, E2 = never, R2 = never>(k: K, f: (e: ExtractTag<NoInfer<E>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A2, E2, R2>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A1 | Exclude<A2, unassigned>, E1 | E2 | (A2 extends unassigned ? ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K> : never), R | R1 | R2>; <A, E, R, const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, R1, E1, A1, A2 = unassigned, E2 = never, R2 = never>(self: Effect<A, E, R>, k: K, f: (e: ExtractTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A2, E2, R2>) | undefined): Effect<A | A1 | Exclude<A2, unassigned>, E1 | E2 | (A2 extends unassigned ? ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K> : never), R | R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2755)

Since v2.0.0