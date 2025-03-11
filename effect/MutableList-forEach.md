## forEach

Executes the specified function `f` for each element in the list.

**Signature**

```ts
declare const forEach: { <A>(f: (element: A) => void): (self: MutableList<A>) => void; <A>(self: MutableList<A>, f: (element: A) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableList.ts#L168)

Since v2.0.0