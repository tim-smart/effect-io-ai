## make

The `combineMany` parameter is optional and defaults to a standard
implementation. You can provide a custom implementation when performance
optimizations are possible.

**Signature**

```ts
declare const make: <A>(combine: Semigroup<A>["combine"], combineMany?: Semigroup<A>["combineMany"]) => Semigroup<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Semigroup.ts#L37)

Since v0.24.0