Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.makeRunMain

Creates a platform-specific main program runner that handles Effect execution lifecycle.

**When to use**

Use when building a runtime adapter for a host platform.

**Details**

The runner executes Effect programs as main entry points. The provided
function receives a forked fiber and a teardown callback so it can install
platform-specific signal handling, fiber observers, and final exit behavior.

Most applications should use a platform-provided runner, such as
`NodeRuntime.runMain`, rather than constructing one directly.

`disableErrorReporting` disables the automatic log emitted for unreported
non-interruption failures. It does not change exit-code calculation or the
custom teardown callback.

**Gotchas**

The setup function is responsible for observing the fiber and eventually
invoking teardown. `makeRunMain` also tries to keep the host process alive
with a long interval while the main fiber is running; if the host blocks
timers, the runner still starts but cannot use that keep-alive fallback.

**Example** (Creating platform runners)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L201)

Since v4.0.0