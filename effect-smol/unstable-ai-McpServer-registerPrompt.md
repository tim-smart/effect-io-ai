Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.registerPrompt

Registers an MCP prompt from an Effect program.

**When to use**

Use when you are already inside an Effect program with an `McpServer`
service and need to add a prompt handler directly.

**Details**

Parameters are decoded with the supplied schema, completion handlers encode
per-parameter suggestions, and string prompt content is converted into a user
text message.

**See**

- `prompt` for the layer-based prompt registration wrapper

**Signature**

```ts
declare const registerPrompt: <E, R, Params extends Schema.Struct.Fields = {}, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Params | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Params) => Effect.Effect<Array<typeof PromptMessage.Type> | string, E, R>; readonly annotations?: Context.Context<never> | undefined; }) => Effect.Effect<void, never, Exclude<Schema.Struct.DecodingServices<Params> | R, McpServerClient> | McpServer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L1041)

Since v4.0.0