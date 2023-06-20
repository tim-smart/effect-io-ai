# isSuspended

Returns `true` if the specified `FiberStatus` is `Suspended`, `false`
otherwise.

To import and use `isSuspended` from the "Status" module:

```ts
import * as Status from '@effect/io/Fiber/Status'

// Can be accessed like this
Status.isSuspended
```

**Signature**

```ts
export declare const isSuspended: (self: FiberStatus) => self is Suspended
```
