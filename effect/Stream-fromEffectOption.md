Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffectOption

Creates a stream from an effect producing a value of type `A` or an empty
`Stream`.

**Signature**

```ts
declare const fromEffectOption: <A, E, R>(effect: Effect.Effect<A, Option.Option<E>, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2028)

Since v2.0.0