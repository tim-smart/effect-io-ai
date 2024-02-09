# around

A data source aspect that executes requests between two effects, `before`
and `after`, where the result of `before` can be used by `after`.

To import and use `around` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.around
```

**Signature**

```ts
export declare const around: {
  <R2, A2, R3, _>(
    before: Effect.Effect<A2, never, R2>,
    after: (a: A2) => Effect.Effect<_, never, R3>
  ): <R, A>(self: RequestResolver<A, R>) => RequestResolver<A, R2 | R3 | R>
  <R, A, R2, A2, R3, _>(
    self: RequestResolver<A, R>,
    before: Effect.Effect<A2, never, R2>,
    after: (a: A2) => Effect.Effect<_, never, R3>
  ): RequestResolver<A, R | R2 | R3>
}
```
