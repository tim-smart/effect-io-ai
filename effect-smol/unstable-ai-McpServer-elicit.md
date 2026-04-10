Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.elicit

Create an elicitation request

**Signature**

```ts
declare const elicit: <S extends Schema.Encoder<Record<string, unknown>, unknown>>(options: { readonly message: string; readonly schema: S; }) => Effect.Effect<S["Type"], ElicitationDeclined, McpServerClient | S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L1049)

Since v4.0.0