# make

A low-level constructor for creating a `Micro` effect. It takes a function
that receives an environment and a callback which should be called with the
result of the effect.

To import and use `make` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.make
```

**Signature**

```ts
export declare const make: <R, A, E>(
  run: (env: Env<R>, onExit: (exit: MicroExit<A, E>) => void) => void
) => Micro<A, E, R>
```
