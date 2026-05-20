Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeWhile

Collects the longest input prefix whose elements satisfy the predicate or
refinement.

**Details**

The first failing input is consumed and excluded from the result. Any later
elements from the same pulled array are returned as leftovers.

**Signature**

```ts
declare const takeWhile: { <In, Out extends In>(refinement: Refinement<In, Out>): Sink<Array<Out>, In, In>; <In>(predicate: Predicate<In>): Sink<Array<In>, In, In>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1427)

Since v4.0.0