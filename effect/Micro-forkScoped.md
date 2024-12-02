# forkScoped

Run the `Micro` effect in a new `Handle` that can be awaited, joined, or
aborted.

The lifetime of the handle will be attached to the current `MicroScope`.

To import and use `forkScoped` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.forkScoped
undefined

**Signature**

```ts
export declare const forkScoped: <A, E, R>(self: Micro<A, E, R>) => Micro<Fiber<A, E>, never, R | MicroScope>
```
