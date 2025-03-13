Package: `effect`<br />
Module: `Micro`<br />

## Micro.tapError

Perform a side effect from expected errors of the given `Micro`.

**Signature**

```ts
declare const tapError: { <E, B, E2, R2>(f: (e: NoInfer<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (e: NoInfer<E>) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2740)

Since v3.4.6