# isDone

Returns `true` if the specified `FiberStatus` is `Done`, `false` otherwise.

To import and use `isDone` from the "Status" module:

```ts
import * as Status from '@effect/io/Fiber/Status'

// Can be accessed like this
Status.isDone
```

**Signature**

```ts
export declare const isDone: (self: FiberStatus) => self is Done
```
