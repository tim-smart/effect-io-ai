# offer

Places one value in the queue.

To import and use `offer` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.offer
```

**Signature**

```ts
export declare const offer: {
  <A>(value: A): (self: Enqueue<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Enqueue<A>, value: A): Effect.Effect<never, never, boolean>
}
```