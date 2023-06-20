# isComposite

Returns `true` if the `FiberId` is a `Composite`, `false` otherwise.

To import and use `isComposite` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.isComposite
```

**Signature**

```ts
export declare const isComposite: (self: FiberId) => self is Composite
```
