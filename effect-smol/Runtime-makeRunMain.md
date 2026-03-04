Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.makeRunMain

Creates a platform-specific main program runner that handles Effect execution lifecycle.

This function creates a runner that can execute Effect programs as main entry points,
handling process signals, fiber management, and teardown operations. The provided
function receives a fiber and teardown callback to implement platform-specific behavior.

**Example**

```ts
import { Effect, Fiber, Runtime } from "effect"

// Create a simple runner for a hypothetical platform
const runMain = Runtime.makeRunMain(({ fiber, teardown }) => {
  // Set up signal handling
  const handleSignal = () => {
    Effect.runSync(Fiber.interrupt(fiber))
  }

  // Add signal listeners (platform-specific)
  // process.on('SIGINT', handleSignal)
  // process.on('SIGTERM', handleSignal)

  // Handle fiber completion
  fiber.addObserver((exit) => {
    teardown(exit, (code) => {
      console.log(`Program finished with exit code: ${code}`)
      // process.exit(code)
    })
  })
})

// Use the runner
const program = Effect.gen(function*() {
  yield* Effect.log("Starting program")
  yield* Effect.sleep(1000)
  yield* Effect.log("Program completed")
  return "success"
})

// Run with default options
runMain(program)

// Run with custom teardown
runMain(program, {
  teardown: (exit, onExit) => {
    console.log("Custom teardown logic")
    Runtime.defaultTeardown(exit, onExit)
  }
})
```

**Signature**

```ts
declare const makeRunMain: (f: <E, A>(options: { readonly fiber: Fiber.Fiber<A, E>; readonly teardown: Teardown; }) => void) => { (options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): <E, A>(effect: Effect.Effect<A, E>) => void; <E, A>(effect: Effect.Effect<A, E>, options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L181)

Since v4.0.0