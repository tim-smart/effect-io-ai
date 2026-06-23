Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.layerFrom

Creates a layer from an effect that acquires a `PgliteClient`, providing both `PgliteClient` and `SqlClient`.

**Signature**

```ts
declare const layerFrom: <E, R>(acquire: Effect.Effect<PgliteClient, E, R>) => Layer.Layer<PgliteClient | Client.SqlClient, E, Exclude<R, Scope.Scope | Reactivity.Reactivity>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L348)

Since v4.0.0