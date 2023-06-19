# recurUntil

A schedule that recurs for until the predicate evaluates to true.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const recurUntil: <A>(f: Predicate<A>) => Schedule<never, A, A>
```
