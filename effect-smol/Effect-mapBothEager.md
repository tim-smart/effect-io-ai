Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapBothEager

An optimized version of `mapBoth` that checks if an effect is already resolved
and applies the appropriate mapping function eagerly when possible.

**When to Use**

`mapBothEager` provides better performance for effects that are already resolved
by applying the transformation immediately instead of deferring it through
the effect pipeline.

**Behavior**

- For **Success effects**: Applies the `onSuccess` function immediately to the value
- For **Failure effects**: Applies the `onFailure` function immediately to the error
- For **Pending effects**: Falls back to the regular `mapBoth` behavior

**Example**

```ts
import { Effect } from "effect"

// For resolved effects, the appropriate mapping is applied immediately
const success = Effect.succeed(5)
const mapped = Effect.mapBothEager(success, {
  onFailure: (err: string) => `Failed: ${err}`,
  onSuccess: (n: number) => n * 2
}) // onSuccess applied eagerly

const failure = Effect.fail("error")
const mappedError = Effect.mapBothEager(failure, {
  onFailure: (err: string) => `Failed: ${err}`,
  onSuccess: (n: number) => n * 2
}) // onFailure applied eagerly
```

**Signature**

```ts
declare const mapBothEager: { <E, E2, A, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): <R>(self: Effect<A, E, R>) => Effect<A2, E2, R>; <A, E, R, E2, A2>(self: Effect<A, E, R>, options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): Effect<A2, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14594)

Since v4.0.0