## Sensitive

A field that represents a sensitive value that should not be exposed in the
JSON variants.

**Signature**

```ts
declare const Sensitive: <S extends Schema.Schema.All | Schema.PropertySignature.All>(schema: S) => Sensitive<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L251)

Since v1.0.0