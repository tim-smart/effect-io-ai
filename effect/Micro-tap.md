Package: `effect`<br />
Module: `Micro`<br />

## Micro.tap

Execute a side effect from the success value of the `Micro` effect.

It is similar to the `andThen` api, but the success value is ignored.

**Signature**

```ts
declare const tap: { <A, X>(f: (a: NoInfer<A>) => X): <E, R>(self: Micro<A, E, R>) => [X] extends [Micro<infer _A1, infer E1, infer R1>] ? Micro<A, E | E1, R | R1> : Micro<A, E, R>; <X>(f: NotFunction<X>): <A, E, R>(self: Micro<A, E, R>) => [X] extends [Micro<infer _A1, infer E1, infer R1>] ? Micro<A, E | E1, R | R1> : Micro<A, E, R>; <A, E, R, X>(self: Micro<A, E, R>, f: (a: NoInfer<A>) => X): [X] extends [Micro<infer _A1, infer E1, infer R1>] ? Micro<A, E | E1, R | R1> : Micro<A, E, R>; <A, E, R, X>(self: Micro<A, E, R>, f: NotFunction<X>): [X] extends [Micro<infer _A1, infer E1, infer R1>] ? Micro<A, E | E1, R | R1> : Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1338)

Since v3.4.0