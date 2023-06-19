# sync

Completes the `Deferred` with the specified lazily evaluated value.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const sync: {
  <A>(evaluate: LazyArg<A>): <E>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, evaluate: LazyArg<A>): Effect.Effect<never, never, boolean>
}
```
