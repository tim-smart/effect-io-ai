## appendElement

Appends an element to the end of a tuple.

**Signature**

```ts
declare const appendElement: { <B>(that: B): <A extends ReadonlyArray<unknown>>(self: A) => [...A, B]; <A extends ReadonlyArray<unknown>, B>(self: A, that: B): [...A, B]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L230)

Since v2.0.0