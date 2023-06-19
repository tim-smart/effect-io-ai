# isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const isFull: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, boolean>
```
