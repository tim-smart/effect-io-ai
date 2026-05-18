Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.elicit

Requests structured input from the current MCP client and decodes the
accepted response with `schema`.

Accepted content is decoded with the supplied schema, declined requests fail
with `ElicitationDeclined`, and canceled requests interrupt the effect.

**Signature**

```ts
declare const elicit: <S extends Schema.Encoder<Record<string, unknown>, unknown>>(options: { readonly message: string; readonly schema: S; }) => Effect.Effect<S["Type"], ElicitationDeclined, McpServerClient | S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L1114)

Since v4.0.0