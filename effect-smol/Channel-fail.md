Package: `effect`<br />
Module: `Channel`<br />

## Channel.fail

Constructs a channel that fails immediately with the specified error.

**Example**

```ts
import { Channel } from "effect"

// Create a channel that fails with a string error
const failedChannel = Channel.fail("Something went wrong")

// Create a channel that fails with a custom error
class CustomError extends Error {
  constructor(message: string) {
    super(message)
    this.name = "CustomError"
  }
}
const customErrorChannel = Channel.fail(new CustomError("Custom error"))

// Use in error handling by piping to another channel
const channelWithFallback = Channel.concatWith(
  failedChannel,
  () => Channel.succeed("fallback value")
)
```

**Signature**

```ts
declare const fail: <E>(error: E) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L903)

Since v2.0.0