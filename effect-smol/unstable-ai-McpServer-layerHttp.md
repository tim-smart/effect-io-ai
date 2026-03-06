Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layerHttp

Run the `McpServer`, registering a router with a `HttpRouter`

**Signature**

```ts
declare const layerHttp: (options: { readonly name: string; readonly version: string; readonly path: HttpRouter.PathInput; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L578)

Since v4.0.0