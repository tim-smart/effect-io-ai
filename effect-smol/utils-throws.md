Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.throws

Asserts that `thunk` throws, optionally checking the thrown value against an expected `Error` or validation function.

**Signature**

```ts
declare const throws: (thunk: () => void, error?: Error | ((u: unknown) => undefined), ..._: Array<never>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L180)

Since v4.0.0