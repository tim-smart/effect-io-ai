Package: `effect`<br />
Module: `List`<br />

## List.prependAllReversed

Prepends the specified prefix list (in reverse order) to the beginning of the
specified list.

**Signature**

```ts
declare const prependAllReversed: { <B>(prefix: List<B>): <A>(self: List<A>) => List<A | B>; <A, B>(self: List<A>, prefix: List<B>): List<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L408)

Since v2.0.0