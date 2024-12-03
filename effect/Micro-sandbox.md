# sandbox

Replace the error type of the given `Micro` with the full `MicroCause` object.

To import and use `sandbox` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.sandbox
```

**Signature**

```ts
export declare const sandbox: <A, E, R>(self: Micro<A, E, R>) => Micro<A, MicroCause<E>, R>
```
