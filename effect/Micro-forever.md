# forever

Repeat the given `Micro` effect forever, only stopping if the effect fails.

To import and use `forever` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.forever
```

**Signature**

```ts
export declare const forever: <A, E, R>(self: Micro<A, E, R>) => Micro<never, E, R>
```
