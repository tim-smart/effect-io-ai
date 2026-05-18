Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.takeNVoid

Removes up to `n` elements from the beginning of the `MutableList` without
returning them.

If `n` is less than or equal to zero, or the list is empty, the list is left
unchanged. If `n` is greater than or equal to the current length, the list is
cleared.

**Signature**

```ts
declare const takeNVoid: <A>(self: MutableList<A>, n: number) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L681)

Since v4.0.0