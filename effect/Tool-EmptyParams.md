Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.EmptyParams

Type of the `EmptyParams` schema used for tools with no parameters.

**Details**

It is a record schema with string keys and `never` values, so the generated
parameter schema accepts an empty object shape with no properties.

**Signature**

```ts
export interface EmptyParams extends Schema.Record$<typeof Schema.String, typeof Schema.Never> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1538)

Since v1.0.0