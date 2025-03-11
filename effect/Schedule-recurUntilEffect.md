## recurUntilEffect

A schedule that recurs until the given effectful predicate evaluates to true.

**Details**

This schedule continues executing as long as the provided effectful predicate
`f` returns `false`. Once `f` evaluates to `true`, the schedule stops
recurring. Unlike `recurUntil`, this function allows the stopping
condition to be computed asynchronously or based on external dependencies.

This is useful when the stopping condition depends on an effectful
computation, such as checking a database, making an API call, or retrieving
system state dynamically.

**See**

- `recurUntil` If you need to use a pure predicate.

**Signature**

```ts
declare const recurUntilEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<A, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1517)

Since v2.0.0