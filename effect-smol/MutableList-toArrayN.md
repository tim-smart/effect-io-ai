Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.toArrayN

Copies up to `n` elements from the beginning of the `MutableList` into a new
array without modifying the list.

**When to use**

Use when you need to inspect or snapshot a bounded prefix of the list without
consuming it.

**See**

- `takeN` for removing up to `n` values and returning them as an array

**Signature**

```ts
declare const toArrayN: <A>(self: MutableList<A>, n: number) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L816)

Since v4.0.0