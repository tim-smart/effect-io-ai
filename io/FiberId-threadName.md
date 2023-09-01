# threadName

Creates a string representing the name of the current thread of execution
represented by the specified `FiberId`.

To import and use `threadName` from the "FiberId" module:

```ts
import * as FiberId from '@effect/io/FiberId'

// Can be accessed like this
FiberId.threadName
```

**Signature**

```ts
export declare const threadName: (self: FiberId) => string
```
