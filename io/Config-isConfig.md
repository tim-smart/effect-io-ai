# isConfig

This function returns `true` if the specified value is an `Config` value,
`false` otherwise.

This function can be useful for checking the type of a value before
attempting to operate on it as an `Config` value. For example, you could
use `isConfig` to check the type of a value before using it as an
argument to a function that expects an `Config` value.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const isConfig: (u: unknown) => u is Config<unknown>
```
