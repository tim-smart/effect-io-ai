Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.fromEffect

Constructs a request resolver from an effectual function.

**Example**

```ts
import { Effect, Request, RequestResolver } from "effect"

interface GetUserFromAPIRequest extends Request.Request<string> {
  readonly _tag: "GetUserFromAPIRequest"
  readonly id: number
}
const GetUserFromAPIRequest = Request.tagged<GetUserFromAPIRequest>(
  "GetUserFromAPIRequest"
)

// Create a resolver that uses effects (like HTTP calls)
const UserAPIResolver = RequestResolver.fromEffect<GetUserFromAPIRequest>(
  (entry) =>
    Effect.gen(function*() {
      // Simulate an API call
      yield* Effect.sleep("100 millis")
      // Just return the result without error handling for simplicity
      return `User ${entry.request.id} from API`
    })
)

// Usage
const getUserEffect = Effect.request(
  GetUserFromAPIRequest({ id: 123 }),
  UserAPIResolver
)
```

**Signature**

```ts
declare const fromEffect: <A extends Request.Any>(f: (entry: Request.Entry<A>) => Effect.Effect<Request.Success<A>, Request.Error<A>>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L380)

Since v2.0.0