Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.registerPrompt

Register a prompt with the McpServer.

**Signature**

```ts
declare const registerPrompt: <E, R, Params extends Schema.Struct.Fields = {}, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Params | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Params) => Effect.Effect<Array<typeof PromptMessage.Type> | string, E, R>; readonly annotations?: ServiceMap.ServiceMap<never> | undefined; }) => Effect.Effect<void, never, Exclude<Schema.Struct.DecodingServices<Params> | R, McpServerClient> | McpServer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L923)

Since v4.0.0