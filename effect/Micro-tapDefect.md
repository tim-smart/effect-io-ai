Package: `effect`<br />
Module: `Micro`<br />

## Micro.tapDefect

Perform a side effect from unexpected errors of the given `Micro`.

**Signature**

```ts
declare const tapDefect: { <E, B, E2, R2>(f: (defect: unknown) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (defect: unknown) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2758)

Since v3.4.6