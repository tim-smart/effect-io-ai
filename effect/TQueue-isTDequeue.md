# isTDequeue

Returns `true` if the specified value is a `TDequeue`, `false` otherwise.

To import and use `isTDequeue` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.isTDequeue
```

**Signature**

```ts
export declare const isTDequeue: (u: unknown) => u is TDequeue<unknown>
```
