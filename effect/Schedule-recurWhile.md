## recurWhile

A schedule that recurs as long as the given predicate evaluates to true.

**Details*

This schedule continues executing as long as the provided predicate `f`
returns `true` for the input value. Once `f` evaluates to `false`, the
schedule stops recurring.

**See**

- `recurWhileEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const recurWhile: <A>(f: Predicate<A>) => Schedule<A, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1569)

Since v2.0.0