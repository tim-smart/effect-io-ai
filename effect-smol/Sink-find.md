Package: `effect`<br />
Module: `Sink`<br />

## Sink.find

Creates a sink containing the first matching value.

**Signature**

```ts
declare const find: { <In, Out extends In>(refinement: Refinement<In, Out>): Sink<Option.Option<Out>, In, In>; <In>(predicate: Predicate<In>): Sink<Option.Option<In>, In, In>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1242)

Since v4.0.0