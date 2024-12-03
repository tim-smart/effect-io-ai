# promise

Wrap a `Promise` into a `Micro` effect.

Any errors will result in a `Die` variant of the `MicroCause` type, where the
error is not tracked at the type level.

To import and use `promise` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.promise
undefined

**Signature**

```ts
export declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Micro<A>
```
