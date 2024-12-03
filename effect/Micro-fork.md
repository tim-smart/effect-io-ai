# fork

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

When the parent `Micro` finishes, this `Micro` will be aborted.

To import and use `fork` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.fork
undefined

**Signature**

```ts
export declare const fork: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>
```
