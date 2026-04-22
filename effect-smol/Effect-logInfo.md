Package: `effect`<br />
Module: `Effect`<br />

## Effect.logInfo

Logs one or more messages at the INFO level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.logInfo("Application starting up")
  yield* Effect.logInfo("Config loaded:", "production", "Port:", 3000)

  // Useful for general information
  const version = "1.2.3"
  yield* Effect.logInfo("Application version:", version)
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=INFO message="Application starting up"
// timestamp=2023-... level=INFO message="Config loaded: production Port: 3000"
// timestamp=2023-... level=INFO message="Application version: 1.2.3"
```

**Signature**

```ts
declare const logInfo: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13106)

Since v2.0.0