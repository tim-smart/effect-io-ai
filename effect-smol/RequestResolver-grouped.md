Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.grouped

Transform a request resolver by grouping requests using the specified key
function.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetUserRequest extends Request.Request<string> {
  readonly _tag: "GetUserRequest"
  readonly userId: number
  readonly department: string
}
const GetUserRequest = Request.tagged<GetUserRequest>("GetUserRequest")

const resolver = RequestResolver.make<GetUserRequest>((entries) =>
  Effect.sync(() => {
    console.log(`Processing ${entries.length} users`)
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`User ${entry.request.userId}`))
    }
  })
)

// Group requests by department for more efficient processing
const groupedResolver = RequestResolver.grouped(
  resolver,
  ({ request }) => request.department
)

// Requests for the same department will be batched together
const requests = [
  Effect.request(
    GetUserRequest({ userId: 1, department: "Engineering" }),
    groupedResolver
  ),
  Effect.request(
    GetUserRequest({ userId: 2, department: "Engineering" }),
    groupedResolver
  ),
  Effect.request(
    GetUserRequest({ userId: 3, department: "Marketing" }),
    groupedResolver
  )
]
```

**Signature**

```ts
declare const grouped: { <A extends Request.Any, K>(f: (entry: Request.Entry<A>) => K): (self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any, K>(self: RequestResolver<A>, f: (entry: Request.Entry<A>) => K): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L737)

Since v4.0.0