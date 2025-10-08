Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.AnyProviderDefined

A type which represents any provider-defined `Tool`.

**Signature**

```ts
export interface AnyProviderDefined extends Any {
  readonly args: any
  readonly argsSchema: AnyStructSchema
  readonly requiresHandler: boolean
  readonly providerName: string
  readonly decodeResult: (
    result: unknown
  ) => Effect.Effect<any, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L509)

Since v1.0.0