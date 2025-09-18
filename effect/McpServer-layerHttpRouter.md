Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.layerHttpRouter

Run the McpServer, using HTTP for input and output.

Uses a `HttpLayerRouter` to register the McpServer routes.

**Signature**

```ts
declare const layerHttpRouter: (options: { readonly name: string; readonly version: string; readonly path: HttpRouter.PathInput; }) => Layer.Layer<McpServer | McpServerClient, never, HttpLayerRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L629)

Since v1.0.0