Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.throwsAsync

Asserts that `thunk` throws or returns a rejected promise, optionally checking the failure value against an expected `Error` or validation function.

**Signature**

```ts
declare const throwsAsync: (thunk: () => Promise<void>, error?: Error | ((u: unknown) => undefined), ..._: Array<never>) => Promise<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L203)

Since v4.0.0