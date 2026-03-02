Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.fromFunctionBatched

Constructs a request resolver from a pure function that takes a list of requests
and returns a list of results of the same size. Each item in the result
list must correspond to the item at the same index in the request list.

**Example**

```ts
import { Effect, Request, RequestResolver } from "effect"

interface GetDoubleRequest extends Request.Request<number> {
  readonly _tag: "GetDoubleRequest"
  readonly value: number
}
const GetDoubleRequest = Request.tagged<GetDoubleRequest>("GetDoubleRequest")

// Create a resolver that processes multiple requests in a batch
const DoubleResolver = RequestResolver.fromFunctionBatched<GetDoubleRequest>(
  (entries) => entries.map((entry) => entry.request.value * 2)
)

// Usage with multiple requests
const effects = [1, 2, 3].map((value) =>
  Effect.request(GetDoubleRequest({ value }), Effect.succeed(DoubleResolver))
)
const batchedEffect = Effect.all(effects) // [2, 4, 6]
```

**Signature**

```ts
declare const fromFunctionBatched: <A extends Request.Any>(f: (entries: NonEmptyArray<Request.Entry<A>>) => Iterable<Request.Success<A>>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L330)

Since v2.0.0