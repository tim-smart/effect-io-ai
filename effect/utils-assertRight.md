Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertRight

Asserts that `either` is `Right`.

**Signature**

```ts
declare const assertRight: <R, L>(either: Either.Either<R, L>, expected: R, ..._: Array<never>) => asserts either is Either.Right<never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L226)

Since v0.21.0