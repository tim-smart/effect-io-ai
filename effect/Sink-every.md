Package: `effect`<br />
Module: `Sink`<br />

## Sink.every

A sink that returns whether all elements satisfy the specified predicate.

**Signature**

```ts
declare const every: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L564)

Since v2.0.0