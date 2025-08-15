Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.resource

Register a resource with the McpServer.

**Signature**

```ts
declare const resource: { <E, R>(options: { readonly uri: string; readonly name: string; readonly description?: string | undefined; readonly mimeType?: string | undefined; readonly audience?: ReadonlyArray<"user" | "assistant"> | undefined; readonly priority?: number | undefined; readonly content: Effect.Effect<typeof ReadResourceResult.Type | string | Uint8Array, E, R>; }): Layer.Layer<never, never, Exclude<R, McpServerClient>>; <const Schemas extends ReadonlyArray<Schema.Schema.Any>>(segments: TemplateStringsArray, ...schemas: Schemas & { readonly [K in keyof Schemas]: Schema.Schema.Encoded<Schemas[K]> extends string ? unknown : "Schema must be encodable to a string"; }): <E, R, const Completions extends Partial<ResourceCompletions<Schemas>> = {}>(options: { readonly name: string; readonly description?: string | undefined; readonly mimeType?: string | undefined; readonly audience?: ReadonlyArray<"user" | "assistant"> | undefined; readonly priority?: number | undefined; readonly completion?: ValidateCompletions<Completions, keyof ResourceCompletions<Schemas>> | undefined; readonly content: (uri: string, ...params: { readonly [K in keyof Schemas]: Schemas[K]["Type"]; }) => Effect.Effect<typeof ReadResourceResult.Type | string | Uint8Array, E, R>; }) => Layer.Layer<never, never, Exclude<R | (Completions[keyof Completions] extends (input: string) => infer Ret ? Ret extends Effect.Effect<infer _A, infer _E, infer _R> ? _R : never : never), McpServerClient>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L861)

Since v1.0.0