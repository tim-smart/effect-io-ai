# make

Creates a new `Deferred`.

To import and use `make` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.make
```

**Signature**

```ts
export declare const make: <A, E = never>() => Effect.Effect<Deferred<A, E>, never, never>
```
