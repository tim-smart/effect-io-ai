Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchCauseFilter

Recovers from stream failures by filtering the `Cause` and switching to a
recovery stream.

**Signature**

```ts
declare const catchCauseFilter: { <E, EB, A2, E2, R2, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, Cause.Cause.Error<X> | E2, R2 | R>; <A, E, R, EB, A2, E2, R2, X extends Cause.Cause<any>>(self: Stream<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Stream<A2, E2, R2>): Stream<A | A2, Cause.Cause.Error<X> | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5453)

Since v4.0.0