Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchCauseEager

Handles failures by matching the cause of failure with eager evaluation.

**Details**

`matchCauseEager` works like `matchCause` but provides better performance for resolved
effects by immediately applying the matching function instead of deferring it
through the effect pipeline.

**When to Use**

This is useful when you have effects that are likely to be already resolved
and you want to avoid the overhead of the effect pipeline. For pending effects,
it automatically falls back to the regular `matchCause` behavior.

**Example**

```ts
import { Effect } from "effect"

const handleResult = Effect.matchCauseEager(Effect.succeed(42), {
  onSuccess: (value) => `Success: ${value}`,
  onFailure: (cause) => `Failed: ${cause}`
})
```

**Signature**

```ts
declare const matchCauseEager: { <E, A2, A, A3>(options: { readonly onFailure: (cause: Cause.Cause<E>) => A2; readonly onSuccess: (value: A) => A3; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, never, R>; <A, E, R, A2, A3>(self: Effect<A, E, R>, options: { readonly onFailure: (cause: Cause.Cause<E>) => A2; readonly onSuccess: (value: A) => A3; }): Effect<A2 | A3, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5248)

Since v3.8.0