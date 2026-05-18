Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.toArray

Copies all current elements of the `MutableList` into a new array without
modifying the list.

Use `takeAll` when the list should be emptied after converting it to an
array.

**Signature**

```ts
declare const toArray: <A>(self: MutableList<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L848)

Since v4.0.0