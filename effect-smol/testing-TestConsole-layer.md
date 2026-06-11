Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.layer

Creates a `Layer` which constructs a `TestConsole`.
This layer can be used to provide a TestConsole implementation
for testing purposes.

**When to use**

Use to run an effect with console calls captured by `TestConsole`.

**Example** (Providing a test console layer)

```ts
import { Console, Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = Effect.gen(function*() {
  yield* Console.log("This will be captured")
  yield* Console.error("This error will be captured")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log("Captured logs:", logs)
  console.log("Captured errors:", errors)
}).pipe(Effect.provide(TestConsole.layer))
```

**See**

- `make` for constructing the service value directly
- `testConsoleWith` for accessing the provided test console service

**Signature**

```ts
declare const layer: Layer.Layer<TestConsole, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L289)

Since v4.0.0