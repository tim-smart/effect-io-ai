Package: `@effect/sql`<br />
Module: `SqlResolver`<br />

## SqlResolver.void

Create a resolver that performs side effects.

**Signature**

```ts
declare const void: <T extends string, I, II, RI, E, R = never>(tag: T, options: { readonly Request: Schema.Schema<I, II, RI>; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<unknown>, E>; readonly withContext?: false; } | { readonly Request: Schema.Schema<I, II, RI>; readonly execute: (requests: Array<Types.NoInfer<II>>) => Effect.Effect<ReadonlyArray<unknown>, E, R>; readonly withContext: true; }) => Effect.Effect<SqlResolver<T, I, void, E, RI>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/SqlResolver.ts#L472)

Since v1.0.0