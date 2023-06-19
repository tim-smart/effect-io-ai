# as

Maps the success value of this effect to the specified constant value.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Signature**

```ts
export declare const as: {
  <B>(b: B): <_>(self: ReadonlyRecord<_>) => Record<string, B>
  <_, B>(self: ReadonlyRecord<_>, b: B): Record<string, B>
}
```
