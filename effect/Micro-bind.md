# bind

Bind the success value of this `Micro` effect to the provided name.

To import and use `bind` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.bind
```

**Signature**

```ts
export declare const bind: {
  <N extends string, A extends Record<string, any>, B, E2, R2>(
    name: N,
    f: (a: NoInfer<A>) => Micro<B, E2, R2>
  ): <E, R>(self: Micro<A, E, R>) => Micro<Simplify<Omit<A, N> & { [K in N]: B }>, E | E2, R | R2>
  <A extends Record<string, any>, E, R, B, E2, R2, N extends string>(
    self: Micro<A, E, R>,
    name: N,
    f: (a: NoInfer<A>) => Micro<B, E2, R2>
  ): Micro<Simplify<Omit<A, N> & { [K in N]: B }>, E | E2, R | R2>
}
```
