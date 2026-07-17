Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.isParam

Returns `true` when a schema was created with `param` and therefore carries
a resource URI template parameter name.

**Signature**

```ts
declare const isParam: (schema: Schema.Constraint) => schema is Param<string, Schema.Top>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L2465)

Since v4.0.0