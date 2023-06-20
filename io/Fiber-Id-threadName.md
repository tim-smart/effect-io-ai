# threadName

Creates a string representing the name of the current thread of execution
represented by the specified `FiberId`.

To import and use `threadName` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.threadName
```

**Signature**

```ts
export declare const threadName: (self: FiberId) => string
```
