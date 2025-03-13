Package: `effect`<br />
Module: `Config`<br />

## Config.isConfig

This function returns `true` if the specified value is an `Config` value,
`false` otherwise.

This function can be useful for checking the type of a value before
attempting to operate on it as an `Config` value. For example, you could
use `isConfig` to check the type of a value before using it as an
argument to a function that expects an `Config` value.

**Signature**

```ts
declare const isConfig: (u: unknown) => u is Config<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L224)

Since v2.0.0