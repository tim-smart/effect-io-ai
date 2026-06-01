Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.toArray

Copies all current elements of the `MutableList` into a new array without
modifying the list.

**When to use**

Use when you need a snapshot of all current elements while keeping the list
unchanged.

**See**

- `takeAll` for converting all elements to an array and clearing the list

**Signature**

```ts
declare const toArray: <A>(self: MutableList<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L885)

Since v4.0.0