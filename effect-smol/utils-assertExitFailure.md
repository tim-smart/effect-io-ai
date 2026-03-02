Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertExitFailure

Asserts that `exit` is a failure.

**Signature**

```ts
declare const assertExitFailure: <A, E>(exit: Exit.Exit<A, E>, expected: Cause.Cause<E>, ..._: Array<never>) => asserts exit is Exit.Failure<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L273)

Since v4.0.0