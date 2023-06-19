# around

A data source aspect that executes requests between two effects, `before`
and `after`, where the result of `before` can be used by `after`.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const around: {
  <R2, A2, R3, _>(before: Effect.Effect<R2, never, A2>, after: (a: A2) => Effect.Effect<R3, never, _>): <R, A>(
    self: RequestResolver<A, R>
  ) => RequestResolver<A, R2 | R3 | R>
  <R, A, R2, A2, R3, _>(
    self: RequestResolver<A, R>,
    before: Effect.Effect<R2, never, A2>,
    after: (a: A2) => Effect.Effect<R3, never, _>
  ): RequestResolver<A, R | R2 | R3>
}
```
