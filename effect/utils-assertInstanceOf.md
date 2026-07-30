Package: `@effect/vitest`<br />
Module: `utils`<br />

## utils.assertInstanceOf

Asserts that `value` is an instance of `constructor`.

**Signature**

```ts
declare const assertInstanceOf: <C extends abstract new (...args: any) => any>(value: unknown, constructor: C, message?: string, ..._: Array<never>) => asserts value is InstanceType<C>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/vitest/src/utils.ts#L83)

Since v0.21.0