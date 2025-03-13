Package: `effect`<br />
Module: `Sink`<br />

## Sink.dropWhile

Drops incoming elements as long as the predicate is satisfied.

**Signature**

```ts
declare const dropWhile: <In>(predicate: Predicate<In>) => Sink<unknown, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L476)

Since v2.0.0