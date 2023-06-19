# recurWhile

A schedule that recurs for as long as the predicate evaluates to true.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const recurWhile: <A>(f: Predicate<A>) => Schedule<never, A, A>
```
