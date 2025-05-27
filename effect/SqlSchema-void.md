Package: `@effect/sql`<br />
Module: `SqlSchema`<br />

## SqlSchema.void

Run a sql query with a request schema and discard the result.

**Signature**

```ts
declare const void: <IR, II, IA, R, E>(options: { readonly Request: Schema.Schema<IA, II, IR>; readonly execute: (request: II) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: IA) => Effect.Effect<void, E | ParseError, R | IR>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/SqlSchema.ts#L51)

Since v1.0.0