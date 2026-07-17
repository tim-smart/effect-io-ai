Package: `effect`<br />
Module: `Sink`<br />

## Sink.make

Creates a pipe-style constructor for sinks over input type `In`.

**Details**

The returned function exposes the sink input as a `Stream<In>`, applies the
provided pipeline, and uses the final effect's success value as the sink
result.

**Signature**

```ts
declare const make: <In>() => make.Constructor<In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L303)

Since v4.0.0