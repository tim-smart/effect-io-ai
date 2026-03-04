Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.errorExitCode

Allows associating an exit code with an error for determining the process
exit code on failure.

```ts
import { Data, Effect, Runtime } from "effect"
import { NodeRuntime } from "@effect/platform-node"

class MyError extends Data.TaggedError("MyError") {
  readonly [Runtime.errorExitCode] = 42
}

// If the program fails with MyError, the process will exit with code 42
NodeRuntime.runMain(Effect.fail(new MyError()))
```

**Signature**

```ts
declare const errorExitCode: "~effect/Runtime/errorExitCode"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L258)

Since v4.0.0