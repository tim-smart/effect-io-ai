# scoped

Provide a `MicroScope` to the given effect, closing it after the effect has
finished executing.

To import and use `scoped` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.scoped
undefined

**Signature**

```ts
export declare const scoped: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, MicroScope>>
```
