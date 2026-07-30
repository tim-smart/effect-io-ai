Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertSuccess

Asserts that `exit` is a success.

**Signature**

```ts
declare const assertSuccess: <A, E>(exit: Exit.Exit<A, E>, expected: A, ..._: Array<never>) => asserts exit is Exit.Success<A, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L257)

Since v0.21.0