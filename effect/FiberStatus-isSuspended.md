# isSuspended

Returns `true` if the specified `FiberStatus` is `Suspended`, `false`
otherwise.

To import and use `isSuspended` from the "FiberStatus" module:

```ts
import * as FiberStatus from 'effect/FiberStatus'

// Can be accessed like this
FiberStatus.isSuspended
```

**Signature**

```ts
export declare const isSuspended: (self: FiberStatus) => self is Suspended
```
