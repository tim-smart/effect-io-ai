# suspend

Lazily creates a `Micro` effect from the given side-effect.

To import and use `suspend` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.suspend
undefined

**Signature**

```ts
export declare const suspend: <A, E, R>(evaluate: LazyArg<Micro<A, E, R>>) => Micro<A, E, R>
```
