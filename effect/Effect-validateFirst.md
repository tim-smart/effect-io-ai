# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

If `elements` is empty then `Effect.fail([])` is returned.

To import and use `validateFirst` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validateFirst
```

**Example**

```ts
import { Effect, Exit } from "effect"

const f = (n: number) => (n > 0 ? Effect.succeed(n) : Effect.fail(`${n} is negative`))

assert.deepStrictEqual(Effect.runSyncExit(Effect.validateFirst([], f)), Exit.fail([]))
assert.deepStrictEqual(Effect.runSyncExit(Effect.validateFirst([1, 2], f)), Exit.succeed(1))
assert.deepStrictEqual(Effect.runSyncExit(Effect.validateFirst([1, -1], f)), Exit.succeed(1))
assert.deepStrictEqual(Effect.runSyncExit(Effect.validateFirst([-1, 2], f)), Exit.succeed(2))
assert.deepStrictEqual(
  Effect.runSyncExit(Effect.validateFirst([-1, -2], f)),
  Exit.fail(["-1 is negative", "-2 is negative"])
)
```

**Signature**

```ts
export declare const validateFirst: {
  <A, B, E, R>(
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<A>) => Effect<B, Array<E>, R>
  <A, B, E, R>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<B, E, R>,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<B, Array<E>, R>
}
```
