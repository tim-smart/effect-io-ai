Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn

The `Effect.fn` function allows you to create traced functions that return an
effect. It provides two key features:

- **Stack traces with location details** if an error occurs.
- **Automatic span creation** for tracing when a span name is provided.

If a span name is passed as the first argument, the function's execution is
tracked using that name. If no name is provided, stack tracing still works,
but spans are not created.

A function can be defined using either:

- A generator function, allowing the use of `yield*` for effect composition.
- A regular function that returns an `Effect`.

**Example** (Creating a Traced Function with a Span Name)

```ts
import { Effect } from "effect"

const myfunc = Effect.fn("myspan")(function* <N extends number>(n: N) {
  yield* Effect.annotateCurrentSpan("n", n) // Attach metadata to the span
  console.log(`got: ${n}`)
  yield* Effect.fail(new Error("Boom!")) // Simulate failure
})

Effect.runFork(myfunc(100).pipe(Effect.catchAllCause(Effect.logError)))
// Output:
// got: 100
// timestamp=... level=ERROR fiber=#0 cause="Error: Boom!
//     at <anonymous> (/.../index.ts:6:22) <= Raise location
//     at myspan (/.../index.ts:3:23)  <= Definition location
//     at myspan (/.../index.ts:9:16)" <= Call location
```

`Effect.fn` automatically creates spans. The spans capture information about
the function execution, including metadata and error details.

**Example** (Exporting Spans to the Console)

```ts
import { Effect } from "effect"
import { NodeSdk } from "@effect/opentelemetry"
import {
  ConsoleSpanExporter,
  BatchSpanProcessor
} from "@opentelemetry/sdk-trace-base"

const myfunc = Effect.fn("myspan")(function* <N extends number>(n: N) {
  yield* Effect.annotateCurrentSpan("n", n)
  console.log(`got: ${n}`)
  yield* Effect.fail(new Error("Boom!"))
})

const program = myfunc(100)

const NodeSdkLive = NodeSdk.layer(() => ({
  resource: { serviceName: "example" },
  // Export span data to the console
  spanProcessor: new BatchSpanProcessor(new ConsoleSpanExporter())
}))

Effect.runFork(program.pipe(Effect.provide(NodeSdkLive)))
// Output:
// got: 100
// {
//   resource: {
//     attributes: {
//       'service.name': 'example',
//       'telemetry.sdk.language': 'nodejs',
//       'telemetry.sdk.name': '@effect/opentelemetry',
//       'telemetry.sdk.version': '1.30.1'
//     }
//   },
//   instrumentationScope: { name: 'example', version: undefined, schemaUrl: undefined },
//   traceId: '22801570119e57a6e2aacda3dec9665b',
//   parentId: undefined,
//   traceState: undefined,
//   name: 'myspan',
//   id: '7af530c1e01bc0cb',
//   kind: 0,
//   timestamp: 1741182277518402.2,
//   duration: 4300.416,
//   attributes: {
//     n: 100,
//     'code.stacktrace': 'at <anonymous> (/.../index.ts:8:23)\n' +
//       'at <anonymous> (/.../index.ts:14:17)'
//   },
//   status: { code: 2, message: 'Boom!' },
//   events: [
//     {
//       name: 'exception',
//       attributes: {
//         'exception.type': 'Error',
//         'exception.message': 'Boom!',
//         'exception.stacktrace': 'Error: Boom!\n' +
//           '    at <anonymous> (/.../index.ts:11:22)\n' +
//           '    at myspan (/.../index.ts:8:23)\n' +
//           '    at myspan (/.../index.ts:14:17)'
//       },
//       time: [ 1741182277, 522702583 ],
//       droppedAttributesCount: 0
//     }
//   ],
//   links: []
// }
```

`Effect.fn` also acts as a pipe function, allowing you to create a pipeline
after the function definition using the effect returned by the generator
function as the starting value of the pipeline.

**Example** (Creating a Traced Function with a Delay)

```ts
import { Effect } from "effect"

const myfunc = Effect.fn(
  function* (n: number) {
    console.log(`got: ${n}`)
    yield* Effect.fail(new Error("Boom!"))
  },
  // You can access both the created effect and the original arguments
  (effect, n) => Effect.delay(effect, `${n / 100} seconds`)
)

Effect.runFork(myfunc(100).pipe(Effect.catchAllCause(Effect.logError)))
// Output:
// got: 100
// timestamp=... level=ERROR fiber=#0 cause="Error: Boom! (<= after 1 second)
```

**See**

- `fnUntraced` for a version of this function that doesn't add a span.

**Signature**

```ts
declare const fn: fn.Gen & fn.NonGen & ((name: string, options?: Tracer.SpanOptions) => fn.Gen & fn.NonGen)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L14624)

Since v3.11.0