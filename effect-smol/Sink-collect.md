Package: `effect`<br />
Module: `Sink`<br />

## Sink.collect

Accumulates incoming elements into an array.

**When to use**

Use when you need a sink result containing all upstream input elements.

**See**

- `take` for collecting only a fixed number of input elements

**Signature**

```ts
declare const collect: <In>() => Sink<Array<In>, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1539)

Since v4.0.0