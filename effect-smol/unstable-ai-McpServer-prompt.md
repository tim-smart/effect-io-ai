Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.prompt

Creates a layer that registers an MCP prompt.

**When to use**

Use to compose prompt registration into an MCP server layer.

**Details**

Parameters are decoded with the supplied schema, completion handlers encode
per-parameter suggestions, and string prompt content is converted into a user
text message.

**See**

- `registerPrompt` for the Effect-level prompt registration API

**Signature**

```ts
declare const prompt: <E, R, Params extends Schema.Struct.Fields = {}, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]["Type"]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Params | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Schema.Struct.Type<Params>) => Effect.Effect<Array<typeof PromptMessage.Type> | string, E, R>; readonly annotations?: Context.Context<never> | undefined; }) => Layer.Layer<never, never, Exclude<Schema.Struct.DecodingServices<Params> | R, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L1148)

Since v4.0.0