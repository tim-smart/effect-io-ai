# isInterruptedOnly

Returns `true` if the specified cause contains only interruptions (without
any `Die` or `Fail` causes), `false` otherwise.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const isInterruptedOnly: <E>(self: Cause<E>) => boolean
```
