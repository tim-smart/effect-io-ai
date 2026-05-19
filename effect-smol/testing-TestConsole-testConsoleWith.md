Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.testConsoleWith

Retrieves the `TestConsole` service for this test and uses it to run the
specified workflow.

**Example** (Accessing the test console service)

```ts
import { Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = TestConsole.testConsoleWith((testConsole) =>
  Effect.gen(function*() {
    testConsole.log("Test message")
    testConsole.error("Test error")

    const logs = yield* testConsole.logLines
    const errors = yield* testConsole.errorLines

    console.log("Logs:", logs) // [["Test message"]]
    console.log("Errors:", errors) // [["Test error"]]
  })
).pipe(Effect.provide(TestConsole.layer))
```

**Signature**

```ts
declare const testConsoleWith: <A, E, R>(f: (console: TestConsole) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L207)

Since v4.0.0