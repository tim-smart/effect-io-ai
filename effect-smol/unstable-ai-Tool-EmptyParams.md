Package: `effect`<br />
Module: `Tool`<br />

## Tool.EmptyParams

Type of the `EmptyParams` schema used for tools with no parameters.

**Details**

It is a record schema with string keys and `never` values, so the generated
parameter schema accepts an empty object shape with no properties.

**Signature**

```ts
export interface EmptyParams extends Schema.$Record<Schema.String, Schema.Never> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1982)

Since v4.0.0