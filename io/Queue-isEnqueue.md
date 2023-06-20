# isEnqueue

Returns `true` if the specified value is a `Enqueue`, `false` otherwise.

To import and use `isEnqueue` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.isEnqueue
```

**Signature**

```ts
export declare const isEnqueue: (u: unknown) => u is Enqueue<unknown>
```
