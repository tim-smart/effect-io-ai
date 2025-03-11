## tapErrorCause

Perform a side effect using the full `MicroCause` object of the given `Micro`.

**Signature**

```ts
declare const tapErrorCause: { <E, B, E2, R2>(f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2681)

Since v3.4.6