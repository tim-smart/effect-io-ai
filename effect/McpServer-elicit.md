Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.elicit

Create an elicitation request

**Signature**

```ts
declare const elicit: <A, I extends Record<string, any>, R>(options: { readonly message: string; readonly schema: Schema.Schema<A, I, R>; }) => Effect.Effect<A, ElicitationDeclined, McpServerClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L1029)

Since v1.0.0