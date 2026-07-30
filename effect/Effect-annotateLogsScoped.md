Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateLogsScoped

Adds log annotations with a limited scope to enhance contextual logging.

**Details**

This function allows you to apply key-value annotations to log entries
generated within a specific scope of your effect computations. The
annotations are restricted to the defined `Scope`, ensuring that they are
only applied to logs produced during that scope. Once the scope ends, the
annotations are automatically removed, making it easier to manage
context-specific logging without affecting other parts of your application.

The annotations can be provided as a single key-value pair or as a record of
multiple key-value pairs. This flexibility enables fine-grained control over
the additional metadata included in logs for specific tasks or operations.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("no annotations")
  yield* Effect.annotateLogsScoped({ key: "value" })
  yield* Effect.log("message1") // Annotation is applied to this log
  yield* Effect.log("message2") // Annotation is applied to this log
}).pipe(Effect.scoped, Effect.andThen(Effect.log("no annotations again")))

Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message="no annotations"
// timestamp=... level=INFO fiber=#0 message=message1 key=value
// timestamp=... level=INFO fiber=#0 message=message2 key=value
// timestamp=... level=INFO fiber=#0 message="no annotations again"
```

**See**

- `annotateLogs` to add custom annotations to log entries generated within an effect.

**Signature**

```ts
declare const annotateLogsScoped: { (key: string, value: unknown): Effect<void, never, Scope.Scope>; (values: Record<string, unknown>): Effect<void, never, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11119)

Since v3.1.0