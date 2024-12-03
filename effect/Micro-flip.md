# flip

Swap the error and success types of the `Micro` effect.

To import and use `flip` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.flip
```

**Signature**

```ts
export declare const flip: <A, E, R>(self: Micro<A, E, R>) => Micro<E, A, R>
```
