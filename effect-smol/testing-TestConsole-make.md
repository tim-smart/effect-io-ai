Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.make

Creates a new TestConsole instance that captures all console output.
The returned TestConsole implements the Console interface and provides
additional methods to retrieve logged messages.

**When to use**

Use to construct a test console service value directly.

**Example** (Creating a test console)

```ts
import { Console, Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = Effect.gen(function*() {
  yield* Console.log("Debug message")
  yield* Console.error("Error occurred")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log("Captured logs:", logs)
  console.log("Captured errors:", errors)
}).pipe(Effect.provide(TestConsole.layer))
```

**See**

- `layer` for providing a `TestConsole` as a `Layer`

**Signature**

```ts
declare const make: Effect.Effect<TestConsole, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L207)

Since v4.0.0