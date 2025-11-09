Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodedSchema

The `encodedSchema` function allows you to extract the `Encoded` portion of a
schema, creating a new schema that conforms to the properties defined in the
original schema without retaining any refinements or transformations that
were applied previously.

**Signature**

```ts
declare const encodedSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<I>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L395)

Since v3.10.0