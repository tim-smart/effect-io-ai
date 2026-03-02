Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapInputArray

Transforms this sink's input elements.

**Signature**

```ts
declare const mapInputArray: { <In0, In>(f: (input: Arr.NonEmptyReadonlyArray<In0>) => Arr.NonEmptyReadonlyArray<In>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E, R>; <A, In, L, E, R, In0>(self: Sink<A, In, L, E, R>, f: (input: Arr.NonEmptyReadonlyArray<In0>) => Arr.NonEmptyReadonlyArray<In>): Sink<A, In0, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L798)

Since v4.0.0