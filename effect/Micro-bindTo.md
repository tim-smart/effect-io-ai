# bindTo

Bind the success value of this `Micro` effect to the provided name.

To import and use `bindTo` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.bindTo
undefined

**Signature**

```ts
export declare const bindTo: {
  <N extends string>(name: N): <A, E, R>(self: Micro<A, E, R>) => Micro<{ [K in N]: A }, E, R>
  <A, E, R, N extends string>(self: Micro<A, E, R>, name: N): Micro<{ [K in N]: A }, E, R>
}
```
