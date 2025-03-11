## andThen

A more flexible version of `flatMap` that combines `map` and `flatMap` into a
single API.

It also lets you directly pass a `Micro` effect, which will be executed after
the current effect.

**Signature**

```ts
declare const andThen: { <A, X>(f: (a: A) => X): <E, R>(self: Micro<A, E, R>) => [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>; <X>(f: NotFunction<X>): <A, E, R>(self: Micro<A, E, R>) => [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>; <A, E, R, X>(self: Micro<A, E, R>, f: (a: A) => X): [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>; <A, E, R, X>(self: Micro<A, E, R>, f: NotFunction<X>): [X] extends [Micro<infer A1, infer E1, infer R1>] ? Micro<A1, E | E1, R | R1> : Micro<X, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1297)

Since v3.4.0