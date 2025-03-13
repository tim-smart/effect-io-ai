Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapInput

Transforms this sink's input elements.

**Signature**

```ts
declare const mapInput: { <In0, In>(f: (input: In0) => In): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E, R>; <A, In, L, E, R, In0>(self: Sink<A, In, L, E, R>, f: (input: In0) => In): Sink<A, In0, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L269)

Since v2.0.0