Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.make

Constructs a request resolver with the specified method to run requests.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

// Define a request type
interface GetUserRequest extends Request.Request<string, Error> {
  readonly _tag: "GetUserRequest"
  readonly id: number
}
const GetUserRequest = Request.tagged<GetUserRequest>("GetUserRequest")

// Create a resolver that handles the requests
const UserResolver = RequestResolver.make<GetUserRequest>((entries) =>
  Effect.sync(() => {
    for (const entry of entries) {
      // Complete each request with a result
      entry.completeUnsafe(Exit.succeed(`User ${entry.request.id}`))
    }
  })
)

// Use the resolver to handle requests
const getUserEffect = Effect.request(GetUserRequest({ id: 123 }), Effect.succeed(UserResolver))
```

**Signature**

```ts
declare const make: <A extends Request.Any>(runAll: (entries: NonEmptyArray<Request.Entry<A>>, key: unknown) => Effect.Effect<void, Request.Error<A>>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L190)

Since v2.0.0