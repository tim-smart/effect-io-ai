Package: `effect`<br />
Module: `Effect`<br />

## Effect.onErrorFilter

Runs the finalizer only when this effect fails and the cause matches the provided `Filter`.

**Signature**

```ts
declare const onErrorFilter: { <A, E, EB, X, XE, XR>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, EB, X, XE, XR>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6484)

Since v4.0.0