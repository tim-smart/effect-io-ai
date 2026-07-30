Package: `@effect/typeclass`<br />
Module: `Bicovariant`<br />

## Bicovariant.map

Returns a default `map` implementation.

**Signature**

```ts
declare const map: <F extends TypeLambda>(F: Bicovariant<F>) => Covariant<F>["map"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Bicovariant.ts#L62)

Since v0.24.0