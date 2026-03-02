Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.fromFunction

Constructs a request resolver from a pure function.

**Example**

```ts
import { Effect, Request, RequestResolver } from "effect"

interface GetSquareRequest extends Request.Request<number> {
  readonly _tag: "GetSquareRequest"
  readonly value: number
}
const GetSquareRequest = Request.tagged<GetSquareRequest>("GetSquareRequest")

// Create a resolver from a pure function
const SquareResolver = RequestResolver.fromFunction<GetSquareRequest>(
  (entry) => entry.request.value * entry.request.value
)

// Usage
const getSquareEffect = Effect.request(
  GetSquareRequest({ value: 5 }),
  Effect.succeed(SquareResolver)
)
// Will resolve to 25
```

**Signature**

```ts
declare const fromFunction: <A extends Request.Any>(f: (entry: Request.Entry<A>) => Request.Success<A>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L287)

Since v2.0.0