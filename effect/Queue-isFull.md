# isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

To import and use `isFull` from the "Queue" module:

```ts
import * as Queue from 'effect/Queue'

// Can be accessed like this
Queue.isFull
```

**Signature**

```ts
export declare const isFull: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, boolean>
```
