Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.race

Returns a request resolver that sends each batch to both resolvers and
completes with the first resolver to finish.

**Details**

The losing resolver run is interrupted after the winning resolver completes
the batch.

**Example** (Racing request resolvers)

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetDataRequest extends Request.Request<string> {
  readonly _tag: "GetDataRequest"
  readonly id: number
}
const GetDataRequest = Request.tagged<GetDataRequest>("GetDataRequest")

// Fast resolver (simulating cache)
const fastResolver = RequestResolver.make<GetDataRequest>((entries) =>
  Effect.gen(function*() {
    yield* Effect.sleep("10 millis")
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`fast-${entry.request.id}`))
    }
  })
)

// Slow resolver (simulating database)
const slowResolver = RequestResolver.make<GetDataRequest>((entries) =>
  Effect.gen(function*() {
    yield* Effect.sleep("100 millis")
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`slow-${entry.request.id}`))
    }
  })
)

// Race resolvers - will use whichever completes first
const racingResolver = RequestResolver.race(fastResolver, slowResolver)
```

**Signature**

```ts
declare const race: { <A2 extends Request.Any>(that: RequestResolver<A2>): <A extends Request.Any>(self: RequestResolver<A>) => RequestResolver<A2 & A>; <A extends Request.Any, A2 extends Request.Any>(self: RequestResolver<A>, that: RequestResolver<A2>): RequestResolver<A & A2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L904)

Since v2.0.0