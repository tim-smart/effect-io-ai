Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.prepend

Prepend an element to the front of an `Iterable`, creating a new `Iterable`.

**Signature**

```ts
declare const prepend: { <B>(head: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, head: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L133)

Since v2.0.0