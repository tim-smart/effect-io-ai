Package: `effect`<br />
Module: `Effect`<br />

## Effect.request

Executes a request using the provided resolver.

**When to use**

Use when you need resolver-driven batching for a typed `Request`.

**Example** (Executing a request through a resolver)

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
  const name = yield* Effect.request(GetUser({ id: 1 }), resolver)
  yield* Console.log(name)
})
```

**See**

- `requestUnsafe` for the low-level entry point when you already have a `Context` and need to enqueue outside an `Effect`

**Signature**

```ts
declare const request: { <A extends Request.Any, EX = never, RX = never>(resolver: RequestResolver<A> | Effect<RequestResolver<A>, EX, RX>): (self: A) => Effect<Request.Success<A>, Request.Error<A> | EX, Request.Services<A> | RX>; <A extends Request.Any, EX = never, RX = never>(self: A, resolver: RequestResolver<A> | Effect<RequestResolver<A>, EX, RX>): Effect<Request.Success<A>, Request.Error<A> | EX, Request.Services<A> | RX>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8509)

Since v2.0.0