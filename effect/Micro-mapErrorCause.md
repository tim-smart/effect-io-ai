Package: `effect`<br />
Module: `Micro`<br />

## Micro.mapErrorCause

Transform the full `MicroCause` object of the given `Micro` effect.

**Signature**

```ts
declare const mapErrorCause: { <E, E2>(f: (e: MicroCause<E>) => MicroCause<E2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E2, R>; <A, E, R, E2>(self: Micro<A, E, R>, f: (e: MicroCause<E>) => MicroCause<E2>): Micro<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2840)

Since v3.4.6