Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.around

A request resolver aspect that executes requests between two effects, `before`
and `after`, where the result of `before` can be used by `after`.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetDataRequest extends Request.Request<string> {
  readonly _tag: "GetDataRequest"
}
const GetDataRequest = Request.tagged<GetDataRequest>("GetDataRequest")

const resolver = RequestResolver.make<GetDataRequest>((entries) =>
  Effect.sync(() => {
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed("data"))
    }
  })
)

// Add setup and cleanup around request execution
const resolverWithAround = RequestResolver.around(
  resolver,
  (entries) =>
    Effect.gen(function*() {
      yield* Effect.log(`Starting batch of ${entries.length} requests`)
      return Date.now()
    }),
  (entries, startTime) =>
    Effect.gen(function*() {
      const duration = Date.now() - startTime
      yield* Effect.log(`Batch completed in ${duration}ms`)
    })
)
```

**Signature**

```ts
declare const around: { <A extends Request.Any, A2, X>(before: (entries: NonEmptyArray<Request.Entry<NoInfer<A>>>) => Effect.Effect<A2, Request.Error<A>>, after: (entries: NonEmptyArray<Request.Entry<NoInfer<A>>>, a: A2) => Effect.Effect<X, Request.Error<A>>): (self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any, A2, X>(self: RequestResolver<A>, before: (entries: NonEmptyArray<Request.Entry<NoInfer<A>>>) => Effect.Effect<A2, Request.Error<A>>, after: (entries: NonEmptyArray<Request.Entry<NoInfer<A>>>, a: A2) => Effect.Effect<X, Request.Error<A>>): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L610)

Since v2.0.0