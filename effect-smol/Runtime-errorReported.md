Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.errorReported

Allows an error to opt-out of error reporting.

```ts
import { Data, Effect, Runtime } from "effect"
import { NodeRuntime } from "@effect/platform-node"

class MyError extends Data.TaggedError("MyError") {
  readonly [Runtime.errorReported] = true
}

// If the program fails with MyError, the process will exit with code 1 but
// no error will be logged.
NodeRuntime.runMain(Effect.fail(new MyError()))
```

**Signature**

```ts
declare const errorReported: "~effect/Runtime/errorReported"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L299)

Since v4.0.0