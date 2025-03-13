Package: `effect`<br />
Module: `Micro`<br />

## Micro.orElseSucceed

Recover from all errors by succeeding with the given value.

**Signature**

```ts
declare const orElseSucceed: { <B>(f: LazyArg<B>): <A, E, R>(self: Micro<A, E, R>) => Micro<A | B, never, R>; <A, E, R, B>(self: Micro<A, E, R>, f: LazyArg<B>): Micro<A | B, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2881)

Since v3.4.0