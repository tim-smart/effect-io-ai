Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchEager

Handles both success and failure cases of an effect without performing side
effects, with eager evaluation for resolved effects.

**Details**

`matchEager` works like `match` but provides better performance for resolved
effects (Success or Failure). When the effect is already resolved, it applies
the handlers immediately without fiber scheduling. For unresolved effects,
it falls back to the regular `match` behavior.

**When to Use**

Use this when you need to handle both success and failure cases and want
optimal performance for resolved effects. This is particularly useful in
scenarios where you frequently work with already computed values.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5203)

Since v2.0.0