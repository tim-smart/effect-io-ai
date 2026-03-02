Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.prompt

Register a prompt with the McpServer.

**Signature**

```ts
declare const prompt: <E, R, Params extends Schema.Struct.Fields = {}, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]["Type"]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Params | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Schema.Struct.Type<Params>) => Effect.Effect<Array<typeof PromptMessage.Type> | string, E, R>; }) => Layer.Layer<never, never, Exclude<Schema.Struct.DecodingServices<Params> | R, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L942)

Since v4.0.0