# clampBigint

Clamps a bigint between a minimum and a maximum value.

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const clampBigint: (
  min: bigint,
  max: bigint
) => <I, A extends bigint>(self: Schema<I, A>) => Schema<I, A>
```
