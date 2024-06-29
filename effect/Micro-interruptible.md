# interruptible

Wrap the given `Micro` effect in an interruptible region, allowing the effect
to be aborted.

To import and use `interruptible` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.interruptible
```

**Signature**

```ts
export declare const interruptible: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
```
