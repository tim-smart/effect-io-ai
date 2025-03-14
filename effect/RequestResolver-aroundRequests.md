Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.aroundRequests

A data source aspect that executes requests between two effects, `before`
and `after`, where the result of `before` can be used by `after`.

The `before` and `after` effects are provided with the requests being executed.

**Example**

```ts
import { Effect, Request, RequestResolver } from "effect"

interface GetUserById extends Request.Request<unknown> {
  readonly id: number
}

const resolver = RequestResolver.fromFunction(
  (request: GetUserById) => ({ id: request.id, name: "John" })
)

RequestResolver.aroundRequests(
  resolver,
  (requests) => Effect.log(`got ${requests.length} requests`),
  (requests, _) => Effect.log(`finised running ${requests.length} requests`)
)
```

**Signature**

```ts
declare const aroundRequests: { <A, A2, R2, X, R3>(before: (requests: ReadonlyArray<Types.NoInfer<A>>) => Effect.Effect<A2, never, R2>, after: (requests: ReadonlyArray<Types.NoInfer<A>>, _: A2) => Effect.Effect<X, never, R3>): <R>(self: RequestResolver<A, R>) => RequestResolver<A, R2 | R3 | R>; <A, R, A2, R2, X, R3>(self: RequestResolver<A, R>, before: (requests: ReadonlyArray<Types.NoInfer<A>>) => Effect.Effect<A2, never, R2>, after: (requests: ReadonlyArray<Types.NoInfer<A>>, _: A2) => Effect.Effect<X, never, R3>): RequestResolver<A, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L189)

Since v2.0.0