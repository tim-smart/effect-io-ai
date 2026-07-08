Package: `effect`<br />
Module: `Schema`<br />

## Schema.toStandardJSONSchemaV1

Converts a schema to an experimental Standard JSON Schema V1 representation.

**Details**

https://github.com/standard-schema/standard-schema/pull/134

**Signature**

```ts
declare const toStandardJSONSchemaV1: <S extends Constraint>(self: S) => StandardJSONSchemaV1<S["Encoded"], S["Type"]> & S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1238)

Since v4.0.0