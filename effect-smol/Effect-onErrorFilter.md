Package: `effect`<br />
Module: `Effect`<br />

## Effect.onErrorFilter

Runs the finalizer only when this effect fails and the cause matches the provided `Filter`.

**When to use**

Use when cleanup or diagnostics should run only for failures whose full
`Cause` is accepted or transformed by a `Filter`, and the finalizer needs the
filter's pass value plus the original cause.

**See**

- `onError` for cleanup on every failure
- `onErrorIf` for selecting failures with a boolean predicate
- `onExitFilter` for selecting from every exit instead of only failures

**Signature**

```ts
declare const onErrorFilter: { <A, E, EB, X, XE, XR>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, EB, X, XE, XR>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6797)

Since v4.0.0