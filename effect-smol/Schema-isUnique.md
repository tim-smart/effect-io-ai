Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUnique

Validates that all items in an array are unique according to Effect equality.

**Details**

JSON Schema:
This check corresponds to the `uniqueItems: true` constraint in JSON Schema.

Arbitrary:
When generating test data with fast-check, this applies a node-local
`unique: true` constraint. Array generators translate it to `fast-check`
`uniqueArray` using Effect equality.

**Signature**

```ts
declare const isUnique: <T>(annotations?: Annotations.Filter) => SchemaAST.Filter<ReadonlyArray<T>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8359)

Since v4.0.0