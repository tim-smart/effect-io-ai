# forkDaemon

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

It will not be aborted when the parent `Micro` finishes.

To import and use `forkDaemon` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.forkDaemon
```

**Signature**

```ts
export declare const forkDaemon: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>
```
