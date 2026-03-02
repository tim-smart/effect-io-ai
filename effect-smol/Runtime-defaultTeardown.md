Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.defaultTeardown

The default teardown function that determines exit codes based on Effect completion.

This teardown function follows standard Unix conventions:
- Returns exit code 0 for successful completion
- Returns exit code 1 for failures (except interruption-only failures)
- Returns exit code 0 for interruption-only failures

**Example**

```ts
import { Effect, Exit, Runtime } from "effect"

// The default teardown behavior
const program1 = Effect.succeed(42)
const program2 = Effect.fail("error")
const program3 = Effect.interrupt

// Using defaultTeardown directly
const logExitCode = (exit: Exit.Exit<any, any>) => {
  Runtime.defaultTeardown(exit, (code) => {
    console.log(`Exit code: ${code}`)
  })
}

// Success case - exit code 0
logExitCode(Exit.succeed(42))

// Failure case - exit code 1
logExitCode(Exit.fail("error"))

// Interruption case - exit code 0
logExitCode(Exit.interrupt(123))
```

**Signature**

```ts
declare const defaultTeardown: Teardown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L116)

Since v4.0.0