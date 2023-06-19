# asUnit

Maps the `Some` value of this `Option` to the `void` constant value.

This is useful when the value of the `Option` is not needed, but the presence or absence of the value is important.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const asUnit: <_>(self: Option<_>) => Option<void>
```
