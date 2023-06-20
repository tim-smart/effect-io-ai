# getOrElse

Returns this `FiberId` if it is not `None`, otherwise returns that `FiberId`.

To import and use `getOrElse` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.getOrElse
```

**Signature**

```ts
export declare const getOrElse: { (that: FiberId): (self: FiberId) => FiberId; (self: FiberId, that: FiberId): FiberId }
```
