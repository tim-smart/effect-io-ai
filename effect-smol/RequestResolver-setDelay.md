Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.setDelay

Sets the batch delay window for this request resolver to the specified duration.

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

// Add a 100ms delay to batch requests together
const delayedResolver = RequestResolver.setDelay(resolver, "100 millis")

// Can also use number for milliseconds
const delayedResolver2 = RequestResolver.setDelay(resolver, 100)
```

**Signature**

```ts
declare const setDelay: { (duration: Duration.Input): <A extends Request.Any>(self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any>(self: RequestResolver<A>, duration: Duration.Input): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L558)

Since v4.0.0