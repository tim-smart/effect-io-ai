# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const size: <A>(self: Hub<A>) => Effect.Effect<never, never, number>
```
