Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Any

A type which represents any `Tool`.

**Signature**

```ts
export interface Any extends Pipeable {
  readonly [TypeId]: {
    readonly _Requirements: Covariant<any>
  }
  readonly id: string
  readonly name: string
  readonly description?: string | undefined
  readonly parametersSchema: AnyStructSchema
  readonly successSchema: Schema.Schema.Any
  readonly failureSchema: Schema.Schema.All
  readonly annotations: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L447)

Since v1.0.0