Package: `effect`<br />
Module: `Sink`<br />

## Sink.find

Creates a sink containing the first value matched by a synchronous predicate.

**When to use**

Use to scan stream input until the first matching element is found and return
that element as an `Option`.

**Details**

Returns `Option.none` if the upstream stream ends before a match is found.
Refinement predicates narrow the returned value type. The matching input is
consumed; any later elements from the same pulled array are returned as
leftovers.

**See**

- `findEffect` for an effectful predicate that can fail or require services

**Signature**

```ts
declare const find: { <In, Out extends In>(refinement: Refinement<In, Out>): Sink<Option.Option<Out>, In, In>; <In>(predicate: Predicate<In>): Sink<Option.Option<In>, In, In>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1486)

Since v4.0.0