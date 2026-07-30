Package: `effect`<br />
Module: `Schema`<br />

## Schema.mutable

Creates a new schema with shallow mutability applied to its properties.

**Signature**

```ts
declare const mutable: <S extends Schema.Any>(schema: S) => mutable<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3269)

Since v3.10.0