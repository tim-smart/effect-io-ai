Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.around

A data source aspect that executes requests between two effects, `before`
and `after`, where the result of `before` can be used by `after`.

**Signature**

```ts
declare const around: { <A2, R2, X, R3>(before: Effect.Effect<A2, never, R2>, after: (a: A2) => Effect.Effect<X, never, R3>): <A, R>(self: RequestResolver<A, R>) => RequestResolver<A, R2 | R3 | R>; <A, R, A2, R2, X, R3>(self: RequestResolver<A, R>, before: Effect.Effect<A2, never, R2>, after: (a: A2) => Effect.Effect<X, never, R3>): RequestResolver<A, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L150)

Since v2.0.0