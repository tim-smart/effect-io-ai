Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.of

Creates an iterable containing a single element.

This is useful for wrapping a single value in an iterable context,
allowing it to be used with other iterable operations.

**Signature**

```ts
declare const of: <A>(a: A) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1391)

Since v2.0.0