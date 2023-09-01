# getOrElse

Returns this `FiberId` if it is not `None`, otherwise returns that `FiberId`.

To import and use `getOrElse` from the "FiberId" module:

```ts
import * as FiberId from '@effect/io/FiberId'

// Can be accessed like this
FiberId.getOrElse
```

**Signature**

```ts
export declare const getOrElse: { (that: FiberId): (self: FiberId) => FiberId; (self: FiberId, that: FiberId): FiberId }
```
