Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.fromEffectTagged

Constructs a request resolver from a list of tags paired to functions, that takes
a list of requests and returns a list of results of the same size. Each item
in the result list must correspond to the item at the same index in the
request list.

**Example**

```ts
import type { Request } from "effect"
import { Effect, RequestResolver } from "effect"

interface GetUser extends Request.Request<string, Error> {
  readonly _tag: "GetUser"
  readonly id: number
}

interface GetPost extends Request.Request<string, Error> {
  readonly _tag: "GetPost"
  readonly id: number
}

type MyRequest = GetUser | GetPost

// Create a resolver that handles different request types
const MyResolver = RequestResolver.fromEffectTagged<MyRequest>()({
  GetUser: (requests) =>
    Effect.succeed(requests.map((req) => `User ${req.request.id}`)),
  GetPost: (requests) =>
    Effect.succeed(requests.map((req) => `Post ${req.request.id}`))
})
```

**Signature**

```ts
declare const fromEffectTagged: <A extends Request.Any & { readonly _tag: string; }>() => <Fns extends { readonly [Tag in A["_tag"]]: [Extract<A, { readonly _tag: Tag; }>] extends [infer Req] ? Req extends Request.Request<infer ReqA, infer ReqE, infer _ReqR> ? (requests: Array<Request.Entry<Req>>) => Effect.Effect<Iterable<ReqA>, ReqE> : never : never; }>(fns: Fns) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L438)

Since v2.0.0