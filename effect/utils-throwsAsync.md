Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.throwsAsync

Asserts that `thunk` throws an error.

**Signature**

```ts
declare const throwsAsync: (thunk: () => Promise<void>, error?: Error | ((u: unknown) => undefined), ..._: Array<never>) => Promise<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L160)

Since v0.21.0