Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.RequestResolver

The `RequestResolver<A, R>` interface requires an environment `R` and handles
the execution of requests of type `A`.

Implementations must provide a `runAll` method, which processes a collection
of requests and produces an effect that fulfills these requests. Requests are
organized into a `Array<Array<A>>`, where the outer `Array` groups requests
into batches that are executed sequentially, and each inner `Array` contains
requests that can be executed in parallel. This structure allows
implementations to analyze all incoming requests collectively and optimize
query execution accordingly.

Implementations are typically specialized for a subtype of `Request<A, E>`.
However, they are not strictly limited to these subtypes as long as they can
map any given request type to `Request<A, E>`. Implementations should inspect
the collection of requests to identify the needed information and execute the
corresponding queries. It is imperative that implementations resolve all the
requests they receive. Failing to do so will lead to a `QueryFailure` error
during query execution.

**Example**

```ts
import type { Request } from "effect"
import { Effect, Exit, RequestResolver } from "effect"

interface GetUserRequest extends Request.Request<string, Error> {
  readonly _tag: "GetUserRequest"
  readonly id: number
}

// In practice, you would typically use RequestResolver.make() instead
const resolver = RequestResolver.make<GetUserRequest>((entries) =>
  Effect.sync(() => {
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`User ${entry.request.id}`))
    }
  })
)
```

**Signature**

```ts
export interface RequestResolver<in A extends Request.Any> extends RequestResolver.Variance<A>, Pipeable {
  readonly delay: Effect.Effect<void>

  /**
   * Get a batch key for the given request.
   */
  batchKey(entry: Request.Entry<A>): unknown

  /**
   * An optional pre-check function that can be used to filter requests before
   * they are added to a batch. If the function returns `false`, the request
   * will not be processed.
   */
  readonly preCheck: ((entry: Request.Entry<A>) => boolean) | undefined

  /**
   * Should the resolver continue collecting requests? Otherwise, it will
   * immediately execute the collected requests cutting the delay short.
   */
  collectWhile(entries: ReadonlySet<Request.Entry<A>>): boolean

  /**
   * Execute a collection of requests.
   */
  runAll(entries: NonEmptyArray<Request.Entry<A>>, key: unknown): Effect.Effect<void, Request.Error<A>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L72)

Since v2.0.0