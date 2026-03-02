Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertExitSuccess

Asserts that `exit` is a success.

**Signature**

```ts
declare const assertExitSuccess: <A, E>(exit: Exit.Exit<A, E>, expected: A, ..._: Array<never>) => asserts exit is Exit.Success<A, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L286)

Since v4.0.0