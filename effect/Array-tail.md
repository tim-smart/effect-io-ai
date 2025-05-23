Package: `effect`<br />
Module: `Array`<br />

## Array.tail

Get all but the first element of an `Iterable`, creating a new `Array`, or `None` if the `Iterable` is empty.

**Signature**

```ts
declare const tail: <A>(self: Iterable<A>) => Option.Option<Array<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L730)

Since v2.0.0