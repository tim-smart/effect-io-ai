Package: `effect`<br />
Module: `Effect`<br />

## Effect.request

Executes a request using the provided resolver.

**Example**

```ts
import { Console, Effect, Exit, Request, RequestResolver } from "effect"

interface GetUser extends Request.Request<string> {
  readonly _tag: "GetUser"
  readonly id: number
}
const GetUser = Request.tagged<GetUser>("GetUser")

const resolver = RequestResolver.make<GetUser>(
  Effect.fnUntraced(function*(entries) {
    for (const entry of entries) {
      yield* Request.complete(entry, Exit.succeed(`user-${entry.request.id}`))
    }
  })
)

const program = Effect.gen(function*() {
  const name = yield* Effect.request(GetUser({ id: 1 }), Effect.succeed(resolver))
  yield* Console.log(name)
})
```

**Signature**

```ts
declare const request: { <A extends Request.Any, EX = never, RX = never>(resolver: RequestResolver<A> | Effect<RequestResolver<A>, EX, RX>): (self: A) => Effect<Request.Success<A>, Request.Error<A> | EX, Request.Services<A> | RX>; <A extends Request.Any, EX = never, RX = never>(self: A, resolver: RequestResolver<A> | Effect<RequestResolver<A>, EX, RX>): Effect<Request.Success<A>, Request.Error<A> | EX, Request.Services<A> | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7915)

Since v2.0.0