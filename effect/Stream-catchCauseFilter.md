Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchCauseFilter

Recovers from stream failures by filtering the `Cause` and switching to a
recovery stream.

**When to use**

Use when you need to recover a stream only from causes selected by a
`Filter`, while giving the recovery both the selected value and the original
`Cause`.

**Details**

The filter is applied to the full `Cause`. A successful filter result is
passed to `f` together with the original cause; a failed filter result
re-fails with the residual cause.

**See**

- `catchCauseIf` for predicate-based cause selection
- `catchFilter` for filtering typed error values instead of full causes
- `catchCause` for recovering from every cause without filtering

**Signature**

```ts
declare const catchCauseFilter: { <E, EB, A2, E2, R2, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, Cause.Cause.Error<X> | E2, R2 | R>; <A, E, R, EB, A2, E2, R2, X extends Cause.Cause<any>>(self: Stream<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Stream<A2, E2, R2>): Stream<A | A2, Cause.Cause.Error<X> | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5863)

Since v4.0.0