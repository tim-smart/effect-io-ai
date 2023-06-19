# offer

Places one value in the queue.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const offer: {
  <A>(value: A): (self: Enqueue<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Enqueue<A>, value: A): Effect.Effect<never, never, boolean>
}
```
