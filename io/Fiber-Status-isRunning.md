# isRunning

Returns `true` if the specified `FiberStatus` is `Running`, `false`
otherwise.

To import and use `isRunning` from the "Status" module:

```ts
import * as Status from '@effect/io/Fiber/Status'

// Can be accessed like this
Status.isRunning
```

**Signature**

```ts
export declare const isRunning: (self: FiberStatus) => self is Running
```
