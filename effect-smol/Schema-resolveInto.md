Package: `effect`<br />
Module: `Schema`<br />

## Schema.resolveInto

Return all the typed annotations from the schema.

**Signature**

```ts
declare const resolveInto: <S extends Top>(schema: S) => S["~annotate.in"] | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11048)

Since v4.0.0