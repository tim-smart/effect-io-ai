Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layerStdio

Run the McpServer, using stdio for input and output.

**Example**

```ts
import { NodeRuntime, NodeStdio } from "@effect/platform-node"
import { Effect, Layer, Logger, Schema } from "effect"
import { McpSchema, McpServer } from "effect/unstable/ai"

const idParam = McpSchema.param("id", Schema.Number)

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
  parameters: {
    flightNumber: Schema.String
  },
  completion: {
    flightNumber: () => Effect.succeed(["FL123", "FL456", "FL789"])
  },
  content: ({ flightNumber }) =>
    Effect.succeed(`Get the booking details for flight number: ${flightNumber}`)
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
  })),
  Layer.provide(NodeStdio.layer),
  Layer.provide(Layer.succeed(Logger.LogToStderr)(true))
)

Layer.launch(ServerLayer).pipe(NodeRuntime.runMain)
```

**Signature**

```ts
declare const layerStdio: (options: { readonly name: string; readonly version: string; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, Stdio>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L572)

Since v4.0.0