Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.ValidateCompletions

Utility type that validates a completion-handler record against the allowed
parameter keys.

**Signature**

```ts
type ValidateCompletions<Completions, Keys> = & Completions
  & {
    readonly [K in keyof Completions]: K extends Keys ? (input: string) => any : never
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L767)

Since v4.0.0