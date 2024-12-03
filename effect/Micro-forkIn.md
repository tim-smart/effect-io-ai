# forkIn

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

The lifetime of the handle will be attached to the provided `MicroScope`.

To import and use `forkIn` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.forkIn
```

**Signature**

```ts
export declare const forkIn: {
  (scope: MicroScope): <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>
  <A, E, R>(self: Micro<A, E, R>, scope: MicroScope): Micro<MicroFiber<A, E>, never, R>
}
```
