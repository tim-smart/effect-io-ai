Package: `effect`<br />
Module: `Logger`<br />

## Logger.structuredLogger

The structured logger provides detailed log outputs, structured in a way that
retains comprehensive traceability of the events, suitable for deeper
analysis and troubleshooting.

**Example**

```ts
import { Effect, Logger } from "effect"

const program = Effect.log("message1", "message2").pipe(
  Effect.annotateLogs({ key1: "value1", key2: "value2" }),
  Effect.withLogSpan("myspan")
)

// Effect.runFork(program.pipe(Effect.provide(Logger.structured)))
// {
//   message: [ 'message1', 'message2' ],
//   logLevel: 'INFO',
//   timestamp: '2024-07-09T14:05:41.623Z',
//   cause: undefined,
//   annotations: { key2: 'value2', key1: 'value1' },
//   spans: { myspan: 0 },
//   fiberId: '#0'
// }
```

**Signature**

```ts
declare const structuredLogger: Logger<unknown, { readonly logLevel: string; readonly fiberId: string; readonly timestamp: string; readonly message: unknown; readonly cause: string | undefined; readonly annotations: Record<string, unknown>; readonly spans: Record<string, number>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L549)

Since v2.0.0