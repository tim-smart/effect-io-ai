## findAll

Run a sql query with a request schema and a result schema.

**Signature**

```ts
declare const findAll: <IR, II, IA, AR, AI, A, R, E>(options: { readonly Request: Schema.Schema<IA, II, IR>; readonly Result: Schema.Schema<A, AI, AR>; readonly execute: (request: II) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: IA) => Effect.Effect<ReadonlyArray<A>, E | ParseError, R | IR | AR>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/SqlSchema.ts#L16)

Since v1.0.0