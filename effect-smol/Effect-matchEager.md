Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchEager

Handles both success and failure cases of an effect without performing side
effects, with eager evaluation for resolved effects.

**When to use**

Use when you need to handle both success and failure cases of an
already-resolved `Effect` with optimized handling.

**Details**

`matchEager` works like `match` but provides better performance for resolved
effects (Success or Failure). When the effect is already resolved, it applies
the handlers immediately without fiber scheduling. For unresolved effects,
it falls back to the regular `match` behavior.

**Example** (Pattern matching eagerly when possible)

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Effect.matchEager(Effect.succeed(42), {
    onFailure: (error) => `Failed: ${error}`,
    onSuccess: (value) => `Success: ${value}`
  })
  console.log(result) // "Success: 42"
})
```

**See**

- `match` for the non-eager version.
- `matchEffect` if you need to perform side effects in the handlers.

**Signature**

```ts
declare const matchEager: { <E, A2, A, A3>(options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, never, R>; <A, E, R, A2, A3>(self: Effect<A, E, R>, options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): Effect<A2 | A3, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5384)

Since v4.0.0