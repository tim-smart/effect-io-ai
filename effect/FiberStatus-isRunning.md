# isRunning

Returns `true` if the specified `FiberStatus` is `Running`, `false`
otherwise.

To import and use `isRunning` from the "FiberStatus" module:

```ts
import * as FiberStatus from 'effect/FiberStatus'

// Can be accessed like this
FiberStatus.isRunning
```

**Signature**

```ts
export declare const isRunning: (self: FiberStatus) => self is Running
```
