Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertExitFailure

Asserts that `exit` is a failure with a cause equal to `expected`.

**Signature**

```ts
declare const assertExitFailure: <A, E>(exit: Exit.Exit<A, E>, expected: Cause.Cause<E>, ..._: Array<never>) => asserts exit is Exit.Failure<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L287)

Since v4.0.0