# unsafeMake

Unsafely creates a new `Deferred` from the specified `FiberId`.

To import and use `unsafeMake` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.unsafeMake
```

**Signature**

```ts
export declare const unsafeMake: <E, A>(fiberId: FiberId.FiberId) => Deferred<E, A>
```