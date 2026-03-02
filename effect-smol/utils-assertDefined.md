Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertDefined

Asserts that `a` is not `undefined`.

**Signature**

```ts
declare const assertDefined: <A>(a: A | undefined, ..._: Array<never>) => asserts a is Exclude<A, undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L198)

Since v4.0.0