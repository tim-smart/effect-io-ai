# andThen

A more flexible version of `flatMap`, that combines `map` and `flatMap` into
a single api.

It also allows you to pass in a `Micro` effect directly, which will be
executed after the current effect.

To import and use `andThen` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.andThen
undefined

**Signature**

```ts
export declare const andThen: {
  <A, X>(
    f: (a: A) => X
  ): <E, R>(
    self: Micro<A, E, R>
  ) => [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>
  <X>(
    f: NotFunction<X>
  ): <A, E, R>(
    self: Micro<A, E, R>
  ) => [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>
  <A, E, R, X>(
    self: Micro<A, E, R>,
    f: (a: A) => X
  ): [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>
  <A, E, R, X>(
    self: Micro<A, E, R>,
    f: NotFunction<X>
  ): [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>
}
```
