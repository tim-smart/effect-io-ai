Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertLeft

Asserts that `either` is `Left`.

**Signature**

```ts
declare const assertLeft: <R, L>(either: Either.Either<R, L>, expected: L, ..._: Array<never>) => asserts either is Either.Left<L, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L214)

Since v0.21.0