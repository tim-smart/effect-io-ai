Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.layer

Creates a `Layer` which constructs a `TestConsole`.
This layer can be used to provide a TestConsole implementation
for testing purposes.

**Example**

```ts
import { Console, Effect } from "effect"
import * as TestConsole from "effect/testing/TestConsole"

const program = Effect.gen(function*() {
  yield* Console.log("This will be captured")
  yield* Console.error("This error will be captured")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log("Captured logs:", logs)
  console.log("Captured errors:", errors)
}).pipe(Effect.provide(TestConsole.layer))
```

**Signature**

```ts
declare const layer: Layer.Layer<TestConsole, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L220)

Since v4.0.0