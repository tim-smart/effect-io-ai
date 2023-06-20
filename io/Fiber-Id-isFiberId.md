# isFiberId

Returns `true` if the specified unknown value is a `FiberId`, `false`
otherwise.

To import and use `isFiberId` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.isFiberId
```

**Signature**

```ts
export declare const isFiberId: (self: unknown) => self is FiberId
```
