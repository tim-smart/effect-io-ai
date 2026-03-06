Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.batchN

Returns a request resolver that executes at most `n` requests in parallel.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetDataRequest extends Request.Request<string> {
  readonly _tag: "GetDataRequest"
  readonly id: number
}
const GetDataRequest = Request.tagged<GetDataRequest>("GetDataRequest")

const resolver = RequestResolver.make<GetDataRequest>((entries) =>
  Effect.sync(() => {
    console.log(`Processing batch of ${entries.length} requests`)
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`data-${entry.request.id}`))
    }
  })
)

// Limit batches to maximum 5 requests
const limitedResolver = RequestResolver.batchN(resolver, 5)

// When more than 5 requests are made, they'll be split into multiple batches
const requests = Array.from(
  { length: 12 },
  (_, i) => Effect.request(GetDataRequest({ id: i }), limitedResolver)
)
```

**Signature**

```ts
declare const batchN: { (n: number): <A extends Request.Any>(self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any>(self: RequestResolver<A>, n: number): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L678)

Since v2.0.0