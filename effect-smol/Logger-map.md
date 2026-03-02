Package: `effect`<br />
Module: `Logger`<br />

## Logger.map

Transforms the output of a `Logger` using the provided function.

This allows you to modify, enhance, or completely change the output format
of an existing logger without recreating the entire logging logic.

**Example**

```ts
import { Logger } from "effect"

// Create a logger that outputs objects
const structuredLogger = Logger.make((options) => ({
  level: options.logLevel,
  message: options.message,
  timestamp: options.date.toISOString()
}))

// Transform the output to JSON strings
const jsonStringLogger = Logger.map(
  structuredLogger,
  (output) => JSON.stringify(output)
)

// Transform to uppercase messages
const uppercaseLogger = Logger.map(
  structuredLogger,
  (output) => ({ ...output, message: String(output.message).toUpperCase() })
)
```

**Signature**

```ts
declare const map: (<Output, Output2>(f: (output: Output) => Output2) => <Message>(self: Logger<Message, Output>) => Logger<Message, Output2>) & (<Message, Output, Output2>(self: Logger<Message, Output>, f: (output: Output) => Output2) => Logger<Message, Output2>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L270)

Since v2.0.0