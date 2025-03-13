Package: `effect`<br />
Module: `Sink`<br />

## Sink.dropUntil

Drops incoming elements until the predicate is satisfied.

**Signature**

```ts
declare const dropUntil: <In>(predicate: Predicate<In>) => Sink<unknown, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L458)

Since v2.0.0