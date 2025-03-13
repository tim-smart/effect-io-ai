Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodedBoundSchema

The `encodedBoundSchema` function is similar to `encodedSchema` but preserves
the refinements up to the first transformation point in the original schema.

**Signature**

```ts
declare const encodedBoundSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<I>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L402)

Since v3.10.0