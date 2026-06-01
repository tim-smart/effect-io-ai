Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapBothEager

Applies `mapBoth` eagerly when an effect is already resolved.

**When to use**

Use when an already-resolved effect should transform either success or
failure immediately while pending effects still use regular channel mapping.

**Details**

Success effects apply `onSuccess` immediately, and failure effects apply
`onFailure` immediately. Pending effects fall back to regular `mapBoth`
behavior.

**Example** (Mapping both channels eagerly when possible)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L15095)

Since v4.0.0