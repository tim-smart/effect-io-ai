Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurWhileEffect

A schedule that recurs as long as the given effectful predicate evaluates to
true.

**Details**

This schedule continues executing as long as the provided effectful predicate
`f` returns `true`. Once `f` evaluates to `false`, the schedule stops
recurring. Unlike `recurWhile`, this function allows the condition to
be computed dynamically using an effectful computation.

**See**

- `recurWhile` If you need to use a pure predicate.

**Signature**

```ts
declare const recurWhileEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<A, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1589)

Since v2.0.0