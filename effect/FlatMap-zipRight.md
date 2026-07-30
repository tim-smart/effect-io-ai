Package: `@effect/typeclass`<br />
Module: `FlatMap`<br />

## FlatMap.zipRight

A variant of `flatMap` that ignores the value produced by this effect.

**Signature**

```ts
declare const zipRight: <F extends TypeLambda>(F: FlatMap<F>) => { <R2, O2, E2, B>(that: Kind<F, R2, O2, E2, B>): <R1, O1, E1, _>(self: Kind<F, R1, O1, E1, _>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, B>; <R1, O1, E1, _, R2, O2, E2, B>(self: Kind<F, R1, O1, E1, _>, that: Kind<F, R2, O2, E2, B>): Kind<F, R1 & R2, O1 | O2, E1 | E2, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/FlatMap.ts#L36)

Since v0.24.0