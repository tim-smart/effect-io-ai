Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateLogs

Adds an annotation to each log line in this effect.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("Starting operation")
  yield* Effect.log("Processing data")
  yield* Effect.log("Operation completed")
})

// Add annotations to all log messages
const annotatedProgram = Effect.annotateLogs(program, {
  userId: "user123",
  operation: "data-processing"
})

// Also supports single key-value annotations
const singleAnnotated = Effect.annotateLogs(program, "requestId", "req-456")

Effect.runPromise(annotatedProgram)
// All log messages will include the userId and operation annotations
```

**Signature**

```ts
declare const annotateLogs: { (key: string, value: unknown): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; (values: Record<string, unknown>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; } & { <A, E, R>(effect: Effect<A, E, R>, key: string, value: unknown): Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, values: Record<string, unknown>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13295)

Since v2.0.0