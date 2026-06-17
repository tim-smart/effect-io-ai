Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.request

Runs a payload as a `SqlRequest` through a request resolver, either directly
with a payload and resolver or curried by resolver.

**Signature**

```ts
declare const request: { <In, A, E, R>(resolver: RequestResolver.RequestResolver<SqlRequest<In, A, E, R>>): (payload: In) => Effect.Effect<A, E | Schema.SchemaError, R>; <In, A, E, R>(payload: In, resolver: RequestResolver.RequestResolver<SqlRequest<In, A, E, R>>): Effect.Effect<A, E | Schema.SchemaError, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L59)

Since v4.0.0