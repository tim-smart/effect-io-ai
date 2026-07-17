Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.param

Creates a parameter for a resource URI template.

**Signature**

```ts
declare const param: <const Name extends string, S extends Schema.Constraint>(name: Name, schema: S) => Param<Name, S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L2511)

Since v4.0.0