Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.makeGrouped

Constructs a request resolver with the requests grouped by a calculated key.

The key can use the Equal trait to determine if two keys are equal.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetUserByRole extends Request.Request<string, Error> {
  readonly _tag: "GetUserByRole"
  readonly role: string
  readonly id: number
}
const GetUserByRole = Request.tagged<GetUserByRole>("GetUserByRole")

// Group requests by role for efficient batch processing
const UserByRoleResolver = RequestResolver.makeGrouped<GetUserByRole, string>({
  key: ({ request }) => request.role,
  resolver: (entries, role) =>
    Effect.sync(() => {
      console.log(`Processing ${entries.length} requests for role: ${role}`)
      for (const entry of entries) {
        entry.completeUnsafe(
          Exit.succeed(`User ${entry.request.id} with role ${role}`)
        )
      }
    })
})
```

**Signature**

```ts
declare const makeGrouped: <A extends Request.Any, K>(options: { readonly key: (entry: Request.Entry<A>) => K; readonly resolver: (entries: NonEmptyArray<Request.Entry<A>>, key: K) => Effect.Effect<void, Request.Error<A>>; }) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L234)

Since v4.0.0