Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.toArrayN

Copies up to `n` elements from the beginning of the `MutableList` into a new
array without modifying the list.

Use `takeN` when the copied elements should also be removed from the list.

**Signature**

```ts
declare const toArrayN: <A>(self: MutableList<A>, n: number) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L820)

Since v4.0.0