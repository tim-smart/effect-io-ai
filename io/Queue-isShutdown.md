# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const isShutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, boolean>
```
