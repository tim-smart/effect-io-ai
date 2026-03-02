Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.make

Creates a new TestConsole instance that captures all console output.
The returned TestConsole implements the Console interface and provides
additional methods to retrieve logged messages.

**Example**

```ts
import { Console, Effect } from "effect"
import * as TestConsole from "effect/testing/TestConsole"

const program = Effect.gen(function*() {
  yield* Console.log("Debug message")
  yield* Console.error("Error occurred")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log("Captured logs:", logs)
  console.log("Captured errors:", errors)
}).pipe(Effect.provide(TestConsole.layer))
```

**Signature**

```ts
declare const make: Effect.Effect<TestConsole, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L126)

Since v4.0.0