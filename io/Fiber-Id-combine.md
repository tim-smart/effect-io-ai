# combine

Combine two `FiberId`s.

To import and use `combine` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.combine
```

**Signature**

```ts
export declare const combine: { (that: FiberId): (self: FiberId) => FiberId; (self: FiberId, that: FiberId): FiberId }
```
