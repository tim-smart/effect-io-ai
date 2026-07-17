Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.takeNVoid

Removes up to `n` elements from the beginning of the `MutableList` without
returning them.

**When to use**

Use to discard a bounded number of values from the head of a `MutableList`
when the removed values are not needed.

**Details**

If `n` is less than or equal to zero, or the list is empty, the list is left
unchanged. If `n` is greater than or equal to the current length, the list is
cleared.

**See**

- `takeN` for removing up to `n` values and returning them as an array
- `clear` for removing every value from the list

**Signature**

```ts
declare const takeNVoid: <A>(self: MutableList<A>, n: number) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableList.ts#L669)

Since v4.0.0