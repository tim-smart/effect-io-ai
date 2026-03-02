Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.setDelayEffect

Sets the batch delay effect for this request resolver.

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

// Set a custom delay effect (e.g., with logging)
const resolverWithCustomDelay = RequestResolver.setDelayEffect(
  resolver,
  Effect.gen(function*() {
    yield* Effect.log("Waiting before processing batch...")
    yield* Effect.sleep("50 millis")
  })
)
```

**Signature**

```ts
declare const setDelayEffect: { (delay: Effect.Effect<void>): <A extends Request.Any>(self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any>(self: RequestResolver<A>, delay: Effect.Effect<void>): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L516)

Since v4.0.0