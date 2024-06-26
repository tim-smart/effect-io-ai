# registerSingleton

Start a computation that is guaranteed to run only on a single pod.
Each pod should call `registerSingleton` but only a single pod will actually run it at any given time.

To import and use `registerSingleton` from the "Sharding" module:

```ts
import * as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.registerSingleton
```

**Signature**

```ts
export declare const registerSingleton: <R>(
  name: string,
  run: Effect.Effect<void, never, R>
) => Effect.Effect<void, never, Sharding | R>
```
