Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertFailure

Asserts that `result` is `Failure`.

**Signature**

```ts
declare const assertFailure: <A, E>(result: Result.Result<A, E>, expected: E, ..._: Array<never>) => asserts result is Result.Failure<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L256)

Since v4.0.0