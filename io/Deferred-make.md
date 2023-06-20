# make

Creates a new `Deferred`.

To import and use `make` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.make
```

**Signature**

```ts
export declare const make: <E, A>() => Effect.Effect<never, never, Deferred<E, A>>
```
