Package: `effect`<br />
Module: `Stream`<br />

## Stream.runSum

Runs the stream to a sink which sums elements, provided they are Numeric.

**Signature**

```ts
declare const runSum: <E, R>(self: Stream<number, E, R>) => Effect.Effect<number, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4494)

Since v2.0.0