# capacity

Returns the number of elements the queue can hold.

To import and use `capacity` from the "Queue" module:

```ts
import * as Queue from 'effect/Queue'

// Can be accessed like this
Queue.capacity
```

**Signature**

```ts
export declare const capacity: <A>(self: Dequeue<A> | Enqueue<A>) => number
```
