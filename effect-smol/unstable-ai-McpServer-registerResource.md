Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.registerResource

Register a resource with the McpServer.

**Signature**

```ts
declare const registerResource: { <E, R>(options: { readonly uri: string; readonly name: string; readonly description?: string | undefined; readonly mimeType?: string | undefined; readonly audience?: ReadonlyArray<"user" | "assistant"> | undefined; readonly priority?: number | undefined; readonly content: Effect.Effect<typeof ReadResourceResult.Type | string | Uint8Array, E, R>; readonly annotations?: Context.Context<never> | undefined; }): Effect.Effect<void, never, Exclude<R, McpServerClient> | McpServer>; <const Schemas extends ReadonlyArray<Schema.Top>>(segments: TemplateStringsArray, ...schemas: Schemas): <E, R, const Completions extends Partial<ResourceCompletions<Schemas>> = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly mimeType?: string | undefined; readonly audience?: ReadonlyArray<"user" | "assistant"> | undefined; readonly priority?: number | undefined; readonly completion?: ValidateCompletions<Completions, keyof ResourceCompletions<Schemas>> | undefined; readonly content: (uri: string, ...params: { readonly [K in keyof Schemas]: Schemas[K]["Type"]; }) => Effect.Effect<typeof ReadResourceResult.Type | string | Uint8Array, E, R>; readonly annotations?: Context.Context<never> | undefined; }) => Effect.Effect<void, never, Exclude<Schemas[number]["DecodingServices"] | Schemas[number]["EncodingServices"] | R | (Completions[keyof Completions] extends (input: string) => infer Ret ? Ret extends Effect.Effect<infer _A, infer _E, infer _R> ? _R : never : never), McpServerClient> | McpServer>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L707)

Since v4.0.0