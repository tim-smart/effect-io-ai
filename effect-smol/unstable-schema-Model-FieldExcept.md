Package: `effect`<br />
Module: `Model`<br />

## Model.FieldExcept

Creates a variant field that applies a schema to every variant except the
supplied keys.

**Signature**

```ts
declare const FieldExcept: <const Keys extends ReadonlyArray<"insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">>(keys: Keys) => <S extends Schema.Top>(schema: S) => VariantSchema.Field<{ readonly [K in Exclude<"insert", Keys[number]> | Exclude<"update", Keys[number]> | Exclude<"json", Keys[number]> | Exclude<"jsonCreate", Keys[number]> | Exclude<"jsonUpdate", Keys[number]> | Exclude<"select", Keys[number]>]: S; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L152)

Since v4.0.0