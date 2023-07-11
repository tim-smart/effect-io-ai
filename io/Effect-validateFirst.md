# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

If `elements` is empty then `Effect.fail([])` is returned.

To import and use `validateFirst` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateFirst
```

**Example**

```ts
import * as Effect from '@effect/io/Effect'
import * as Exit from '@effect/io/Exit'

const f = (n: number) => (n > 0 ? Effect.succeed(n) : Effect.fail(`${n} is negative`))

assert.deepStrictEqual(Exit.unannotate(Effect.runSyncExit(Effect.validateFirst([], f))), Exit.fail([]))
assert.deepStrictEqual(Exit.unannotate(Effect.runSyncExit(Effect.validateFirst([1, 2], f))), Exit.succeed(1))
assert.deepStrictEqual(Exit.unannotate(Effect.runSyncExit(Effect.validateFirst([1, -1], f))), Exit.succeed(1))
assert.deepStrictEqual(Exit.unannotate(Effect.runSyncExit(Effect.validateFirst([-1, 2], f))), Exit.succeed(2))
assert.deepStrictEqual(
  Exit.unannotate(Effect.runSyncExit(Effect.validateFirst([-1, -2], f))),
  Exit.fail(['-1 is negative', '-2 is negative'])
)
```

**Signature**

```ts
export declare const validateFirst: {
  <R, E, A, B>(
    f: (a: A, i: number) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batching?: boolean | 'inherit' }
  ): (elements: Iterable<A>) => Effect<R, E[], B>
  <R, E, A, B>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batching?: boolean | 'inherit' }
  ): Effect<R, E[], B>
}
```
