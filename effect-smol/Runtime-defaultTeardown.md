Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.defaultTeardown

The default teardown function that determines exit codes from an Effect exit.

**When to use**

Use as the standard teardown for main programs with conventional process
exit codes and support for `errorExitCode`.

**Details**

This teardown follows these exit-code rules:

- `0` for successful completion.
- `130` for interruption-only failures.
- The squashed error's `errorExitCode` value for other failures when
  present.
- `1` for other failures.

**Gotchas**

The `130` code is used only when the Cause contains interruptions and no
other failure reasons. Mixed causes use the squashed error path instead.

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

**See**

- `errorExitCode` for customizing failure exit codes

**Signature**

```ts
declare const defaultTeardown: Teardown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L165)

Since v4.0.0