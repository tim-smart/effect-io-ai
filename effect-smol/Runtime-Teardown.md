Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.Teardown

Represents a teardown function that handles program completion and determines the exit code.

The teardown function is called when an Effect program completes (either successfully or with failure)
and is responsible for determining the appropriate exit code and performing any cleanup operations.

**Example**

```ts
import { Effect, Exit, Runtime } from "effect"

// Custom teardown that logs completion status
const customTeardown: Runtime.Teardown = (exit, onExit) => {
  if (Exit.isSuccess(exit)) {
    console.log("Program completed successfully with value:", exit.value)
    onExit(0)
  } else {
    console.log("Program failed with cause:", exit.cause)
    onExit(1)
  }
}

// Use with makeRunMain
const runMain = Runtime.makeRunMain(({ fiber, teardown }) => {
  fiber.addObserver((exit) => {
    teardown(exit, (code) => {
      console.log(`Exiting with code: ${code}`)
    })
  })
})

const program = Effect.succeed("Hello, World!")
runMain(program, { teardown: customTeardown })
```

**Signature**

```ts
export interface Teardown {
  <E, A>(exit: Exit.Exit<E, A>, onExit: (code: number) => void): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L75)

Since v4.0.0