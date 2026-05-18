Package: `effect`<br />
Module: `SqlConnection`<br />

## SqlConnection.Acquirer

Scoped effect that acquires a `Connection`, may fail with `SqlError`, and
requires a `Scope` for release.

**Signature**

```ts
type Acquirer = Effect<Connection, SqlError, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlConnection.ts#L79)

Since v4.0.0