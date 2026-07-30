Package: `effect`<br />
Module: `Schema`<br />

## Schema.typeSchema

The `typeSchema` function allows you to extract the `Type` portion of a
schema, creating a new schema that conforms to the properties defined in the
original schema without considering the initial encoding or transformation
processes.

**Signature**

```ts
declare const typeSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L415)

Since v3.10.0