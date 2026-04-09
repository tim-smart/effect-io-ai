Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.param

Helper to create a param for a resource URI template.

**Signature**

```ts
declare const param: <const Name extends string, S extends Schema.Top>(name: Name, schema: S) => Param<Name, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2121)

Since v4.0.0