Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.registerPrompt

Register a prompt with the McpServer.

**Signature**

```ts
declare const registerPrompt: <E, R, Params = {}, ParamsI extends Record<string, string> = {}, ParamsR = never, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Schema.Schema<Params, ParamsI, ParamsR> | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Params) => Effect.Effect<Array<typeof PromptMessage.Type> | string, E, R>; }) => Effect.Effect<void, never, Exclude<ParamsR | R, McpServerClient> | McpServer>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L926)

Since v1.0.0