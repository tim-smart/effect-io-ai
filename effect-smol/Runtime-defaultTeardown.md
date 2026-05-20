Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.defaultTeardown

The default teardown function that determines exit codes from an Effect exit.

**Details**

This teardown function follows standard Unix conventions: exit code `0` for successful completion, exit code `1` for failures unless the squashed error has a `Runtime.errorExitCode` marker, and exit code `130` for interruption-only failures.

**Example** (Using default teardown)

```ts
import { Exit, Runtime } from "effect"

const logExitCode = (exit: Exit.Exit<any, any>) => {
  Runtime.defaultTeardown(exit, (code) => {
    console.log(`Exit code: ${code}`)
  })
}

logExitCode(Exit.succeed(42))
// Output: Exit code: 0

logExitCode(Exit.fail("error"))
// Output: Exit code: 1

logExitCode(Exit.interrupt(123))
// Output: Exit code: 130
```

**Signature**

```ts
declare const defaultTeardown: Teardown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L110)

Since v4.0.0