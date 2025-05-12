Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.make

Constructs an `AiTool` from a name and, optionally, a specification for the
tool call's protocol.

**Signature**

```ts
declare const make: <const Name extends string, Parameters extends Schema.Struct.Fields = {}, Success extends Schema.Schema.Any = typeof Schema.Void, Failure extends Schema.Schema.All = typeof Schema.Never>(name: Name, options?: { readonly description?: string | undefined; readonly parameters?: Parameters; readonly success?: Success; readonly failure?: Failure; }) => AiTool<Name, Schema.Struct<Parameters>, Success, Failure>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L442)

Since v1.0.0