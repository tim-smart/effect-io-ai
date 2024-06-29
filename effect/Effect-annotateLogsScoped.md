# annotateLogsScoped

Annotates each log with the specified log annotation(s), until the Scope is closed.

To import and use `annotateLogsScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateLogsScoped
```

**Example**

```ts
import { Effect } from "effect"

Effect.gen(function* () {
  yield* Effect.log("no annotations")
  yield* Effect.annotateLogsScoped({ foo: "bar" })
  yield* Effect.log("annotated with foo=bar")
}).pipe(Effect.scoped, Effect.andThen(Effect.log("no annotations again")))
```

**Signature**

```ts
export declare const annotateLogsScoped: {
  (key: string, value: unknown): Effect<void, never, Scope.Scope>
  (values: Record<string, unknown>): Effect<void, never, Scope.Scope>
}
```
