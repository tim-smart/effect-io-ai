Package: `effect`<br />
Module: `Micro`<br />

## Micro.catchAllCause

Catch the full `MicroCause` object of the given `Micro` effect, allowing you to
recover from any kind of cause.

**Signature**

```ts
declare const catchAllCause: { <E, B, E2, R2>(f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A | B, E2, R | R2>; <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>): Micro<A | B, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2567)

Since v3.4.6