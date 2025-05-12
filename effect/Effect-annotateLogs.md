Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateLogs

Adds custom annotations to log entries generated within an effect.

**Details**

This function allows you to enhance log messages by appending additional
context in the form of key-value pairs. These annotations are included in
every log message created during the execution of the effect, making the logs
more informative and easier to trace.

The annotations can be specified as a single key-value pair or as a record of
multiple key-value pairs. This is particularly useful for tracking
operations, debugging, or associating specific metadata with logs for better
observability.

The annotated key-value pairs will appear alongside the log message in the
output.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("message1")
  yield* Effect.log("message2")
}).pipe(Effect.annotateLogs("taskId", "1234")) // Annotation as key/value pair

Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message=message1 taskId=1234
// timestamp=... level=INFO fiber=#0 message=message2 taskId=1234
```

**See**

- `annotateLogsScoped` to add log annotations with a limited scope.

**Signature**

```ts
declare const annotateLogs: { (key: string, value: unknown): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; (values: Record<string, unknown>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, key: string, value: unknown): Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, values: Record<string, unknown>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11031)

Since v2.0.0