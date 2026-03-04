Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapErrorTag

Runs an effectful handler when a failure's `_tag` matches.

Use this with tagged-union errors to perform side effects for a tag (or tag
list) while preserving the original failure.

**Example**

```ts
import { Console, Data, Effect } from "effect"

class NetworkError extends Data.TaggedError("NetworkError")<{
  statusCode: number
}> {}

class ValidationError extends Data.TaggedError("ValidationError")<{
  field: string
}> {}

const task: Effect.Effect<number, NetworkError | ValidationError> =
  Effect.fail(new NetworkError({ statusCode: 504 }))

const program = Effect.tapErrorTag(task, "NetworkError", (error) =>
  Console.log(`expected error: ${error.statusCode}`)
)

Effect.runPromiseExit(program)
// Output:
// expected error: 504
```

**Signature**

```ts
declare const tapErrorTag: { <const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, E, A1, E1, R1>(k: K, f: (e: ExtractTag<NoInfer<E>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E1, R1 | R>; <A, E, R, const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, R1, E1, A1>(self: Effect<A, E, R>, k: K, f: (e: ExtractTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect<A1, E1, R1>): Effect<A, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3644)

Since v2.0.0