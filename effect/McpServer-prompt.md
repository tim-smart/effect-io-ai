Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.prompt

Register a prompt with the McpServer.

**Signature**

```ts
declare const prompt: <E, R, Params = {}, ParamsI extends Record<string, string> = {}, ParamsR = never, const Completions extends { readonly [K in keyof Params]?: (input: string) => Effect.Effect<Array<Params[K]>, any, any>; } = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly parameters?: Schema.Schema<Params, ParamsI, ParamsR> | undefined; readonly completion?: ValidateCompletions<Completions, Extract<keyof Params, string>> | undefined; readonly content: (params: Params) => Effect.Effect<Array<PromptMessage> | string, E, R>; }) => Layer.Layer<never, never, ParamsR | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L893)

Since v1.0.0