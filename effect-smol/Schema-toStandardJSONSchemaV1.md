Package: `effect`<br />
Module: `Schema`<br />

## Schema.toStandardJSONSchemaV1

Experimental support for converting a schema to a Standard JSON Schema V1.

https://github.com/standard-schema/standard-schema/pull/134

**Signature**

```ts
declare const toStandardJSONSchemaV1: <S extends Top>(self: S) => StandardJSONSchemaV1<S["Encoded"], S["Type"]> & S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1042)

Since v4.0.0