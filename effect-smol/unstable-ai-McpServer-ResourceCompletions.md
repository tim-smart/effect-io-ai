Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.ResourceCompletions

Completion-handler map for a resource URI template.

Each schema interpolation contributes a parameter key, using an explicit
`Param` name when present or `paramN` otherwise, and each handler returns
candidate values for that parameter.

**Signature**

```ts
type ResourceCompletions<Schemas> = {
  readonly [
    K in Extract<keyof Schemas, `${number}`> as Schemas[K] extends Param<infer Id, infer _S> ? Id
      : `param${K}`
  ]: (input: string) => Effect.Effect<Array<Schemas[K]["Type"]>, any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L759)

Since v4.0.0