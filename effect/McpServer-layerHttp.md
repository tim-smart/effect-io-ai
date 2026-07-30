Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.layerHttp

Run the McpServer, using HTTP for input and output.

```ts
import { McpSchema, McpServer } from "@effect/ai"
import { HttpRouter } from "@effect/platform"
import { NodeHttpServer, NodeRuntime } from "@effect/platform-node"
import { Effect, Layer, Schema } from "effect"
import { createServer } from "node:http"

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
  TestPrompt,
  HttpRouter.Default.serve()
).pipe(
  // Provide the MCP server implementation
  Layer.provide(McpServer.layerHttp({
    name: "Demo Server",
    version: "1.0.0",
    path: "/mcp"
  })),
  Layer.provide(NodeHttpServer.layer(createServer, { port: 3000 }))
)

Layer.launch(ServerLayer).pipe(NodeRuntime.runMain)
```

**Signature**

```ts
declare const layerHttp: <I = HttpRouter.Default>(options: { readonly name: string; readonly version: string; readonly path: HttpRouter.PathInput; readonly routerTag?: HttpRouter.HttpRouter.TagClass<I, string, any, any>; }) => Layer.Layer<McpServer | McpServerClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L610)

Since v1.0.0