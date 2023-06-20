# isRuntime

Returns `true` if the `FiberId` is a `Runtime`, `false` otherwise.

To import and use `isRuntime` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.isRuntime
```

**Signature**

```ts
export declare const isRuntime: (self: FiberId) => self is Runtime
```
