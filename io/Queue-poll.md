# poll

Returns the first value in the `Queue` as a `Some<A>`, or `None` if the queue
is empty.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const poll: <A>(self: Dequeue<A>) => Effect.Effect<never, never, Option.Option<A>>
```
