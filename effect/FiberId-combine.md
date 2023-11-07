# combine

Combine two `FiberId`s.

To import and use `combine` from the "FiberId" module:

```ts
import * as FiberId from 'effect/FiberId'

// Can be accessed like this
FiberId.combine
```

**Signature**

```ts
export declare const combine: { (that: FiberId): (self: FiberId) => FiberId; (self: FiberId, that: FiberId): FiberId }
```
