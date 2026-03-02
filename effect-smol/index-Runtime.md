Package: `effect`<br />
Module: `index`<br />

## index.Runtime

Re-exports all named exports from the "./Runtime.ts" module as `Runtime`.

**Example**

```ts
import { Effect, Fiber, Runtime } from "effect"

// Create a main runner for Node.js
const runMain = Runtime.makeRunMain((options) => {
  process.on("SIGINT", () => Effect.runFork(Fiber.interrupt(options.fiber)))
  process.on("SIGTERM", () => Effect.runFork(Fiber.interrupt(options.fiber)))

  options.fiber.addObserver((exit) => {
    options.teardown(exit, (code) => process.exit(code))
  })
})

// Use the runner
const program = Effect.log("Hello, World!")
runMain(program)
```

**Signature**

```ts
export * as Runtime from "./Runtime.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L3166)

Since v4.0.0