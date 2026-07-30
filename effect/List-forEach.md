Package: `effect`<br />
Module: `List`<br />

## List.forEach

Applies the specified function to each element of the `List`.

**Signature**

```ts
declare const forEach: { <A, B>(f: (a: A) => B): (self: List<A>) => void; <A, B>(self: List<A>, f: (a: A) => B): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L684)

Since v2.0.0