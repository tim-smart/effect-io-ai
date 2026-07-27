Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.ToJsonSchema.CheckInput

Input for a check compiler.

**Signature**

```ts
export interface CheckInput {
    readonly type: JsonSchema.Type | undefined
    readonly schemas: ReadonlyArray<JsonSchema.JsonSchema>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L52)

Since v4.0.0