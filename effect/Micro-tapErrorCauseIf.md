## tapErrorCauseIf

Perform a side effect using if a `MicroCause` object matches the specified
predicate.

**Signature**

```ts
declare const tapErrorCauseIf: { <E, B, E2, R2, EB extends MicroCause<E>>(refinement: Refinement<MicroCause<E>, EB>, f: (a: EB) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>; <E, B, E2, R2>(predicate: (cause: NoInfer<MicroCause<E>>) => boolean, f: (a: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>; <A, E, R, B, E2, R2, EB extends MicroCause<E>>(self: Micro<A, E, R>, refinement: Refinement<MicroCause<E>, EB>, f: (a: EB) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, predicate: (cause: NoInfer<MicroCause<E>>) => boolean, f: (a: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2705)

Since v3.4.0