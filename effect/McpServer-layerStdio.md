Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.layerStdio

Run the McpServer, using stdio for input and output.

```ts
import { McpSchema, McpServer } from "@effect/ai"
import { NodeRuntime, NodeSink, NodeStream } from "@effect/platform-node"
import { Effect, Layer, Logger, Schema } from "effect"

const idParam = McpSchema.param("id", Schema.NumberFromString)

// Define a resource template for a README file
const ReadmeTemplate = McpServer.resource`file://readme/${idParam}`({
  name: "README Template",
  // You can add auto-completion for the ID parameter
  completion: {
    id: (_) => Effect.succeed([1, 2, 3, 4, 5])
  },
  content: Effect.fn(function*(_uri, id) {
    return `# MCP Server Demo - ID: ${id}`
  })
})

// Define a test prompt with parameters
const TestPrompt = McpServer.prompt({
  name: "Test Prompt",
  description: "A test prompt to demonstrate MCP server capabilities",
  parameters: Schema.Struct({
    flightNumber: Schema.String
  }),
  completion: {
    flightNumber: () => Effect.succeed(["FL123", "FL456", "FL789"])
  },
  content: ({ flightNumber }) => Effect.succeed(`Get the booking details for flight number: ${flightNumber}`)
})

// Merge all the resources and prompts into a single server layer
const ServerLayer = Layer.mergeAll(
  ReadmeTemplate,
  TestPrompt
).pipe(
  // Provide the MCP server implementation
  Layer.provide(McpServer.layerStdio({
    name: "Demo Server",
    version: "1.0.0",
    stdin: NodeStream.stdin,
    stdout: NodeSink.stdout
  })),
  // add a stderr logger
  Layer.provide(Logger.add(Logger.prettyLogger({ stderr: true })))
)

Layer.launch(ServerLayer).pipe(NodeRuntime.runMain)
```

**Signature**

```ts
declare const layerStdio: <EIn, RIn, EOut, ROut>(options: { readonly name: string; readonly version: string; readonly stdin: Stream<Uint8Array, EIn, RIn>; readonly stdout: Sink<unknown, Uint8Array | string, unknown, EOut, ROut>; }) => Layer.Layer<McpServer | McpServerClient, never, RIn | ROut>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L533)

Since v1.0.0