Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$PrimitiveTree

Schema for `PrimitiveTree`.

**When to use**

Use to validate recursive annotation metadata trees whose leaves are `null`,
`number`, `boolean`, `bigint`, `symbol`, or `string`.

**See**

- `PrimitiveTree` for the recursive tree type accepted by this codec
- `$Annotations` for the annotation codec that filters values through this codec

**Signature**

```ts
declare const $PrimitiveTree: Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L764)

Since v4.0.0