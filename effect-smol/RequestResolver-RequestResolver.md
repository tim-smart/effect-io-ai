Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.RequestResolver

A resolver that executes and completes batched `Request` entries.

**Details**

A resolver controls how requests are grouped, delayed, optionally
pre-checked, and finally run. Its `runAll` method receives a non-empty batch
of `Request.Entry` values for a single batch key and must complete every
received entry, usually by calling `completeUnsafe` or one of the `Request`
completion helpers.

**Notes**

If a resolver finishes without completing an entry, the waiting request fails
because the resolver did not supply a result.

**Example** (Defining a request resolver)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L112)

Since v2.0.0