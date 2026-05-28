Package: `effect`<br />
Module: `SqlClient`<br />

## SqlClient.make

Constructs a `SqlClient` from connection acquirers, a compiler, transaction
commands, tracing attributes, optional row transforms, and reactive query
integration.

**Signature**

```ts
declare const make: (options: SqlClient.MakeOptions) => Effect.Effect<SqlClient, never, Reactivity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlClient.ts#L153)

Since v4.0.0