# annotateLogsScoped

Applies log annotations with a limited scope, restricting their appearance to
specific sections of your effect computations. Use
`Effect.annotateLogsScoped` to add metadata to logs that only appear within a
defined `Scope`, making it easier to manage context-specific logging.

To import and use `annotateLogsScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateLogsScoped
```

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.log("no annotations")
  yield* Effect.annotateLogsScoped({ key: "value" })
  yield* Effect.log("message1") // Annotation is applied to this log
  yield* Effect.log("message2") // Annotation is applied to this log
}).pipe(Effect.scoped, Effect.andThen(Effect.log("no annotations again")))

// Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message="no annotations"
// timestamp=... level=INFO fiber=#0 message=message1 key=value
// timestamp=... level=INFO fiber=#0 message=message2 key=value
// timestamp=... level=INFO fiber=#0 message="no annotations again"
```

**Signature**

```ts
export declare const annotateLogsScoped: {
  (key: string, value: unknown): Effect<void, never, Scope.Scope>
  (values: Record<string, unknown>): Effect<void, never, Scope.Scope>
}
```
