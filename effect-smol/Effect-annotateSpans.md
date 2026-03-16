Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateSpans

Adds an annotation to each span in this effect.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("Doing some work...")
  return "result"
})

// Add single annotation
const annotated1 = Effect.annotateSpans(program, "user", "john")

// Add multiple annotations
const annotated2 = Effect.annotateSpans(program, {
  operation: "data-processing",
  version: "1.0.0",
  environment: "production"
})
```

**Signature**

```ts
declare const annotateSpans: { (key: string, value: unknown): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; (values: Record<string, unknown>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, key: string, value: unknown): Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, values: Record<string, unknown>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7545)

Since v2.0.0