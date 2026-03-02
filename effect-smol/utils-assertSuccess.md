Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertSuccess

Asserts that `result` is `Success`.

**Signature**

```ts
declare const assertSuccess: <A, E>(result: Result.Result<A, E>, expected: A, ..._: Array<never>) => asserts result is Result.Success<A, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L243)

Since v4.0.0