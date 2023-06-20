# isFiberStatus

Returns `true` if the specified value is a `FiberStatus`, `false` otherwise.

To import and use `isFiberStatus` from the "Status" module:

```ts
import * as Status from '@effect/io/Fiber/Status'

// Can be accessed like this
Status.isFiberStatus
```

**Signature**

```ts
export declare const isFiberStatus: (u: unknown) => u is FiberStatus
```
