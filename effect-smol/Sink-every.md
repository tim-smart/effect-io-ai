Package: `effect`<br />
Module: `Sink`<br />

## Sink.every

A sink that returns whether all elements satisfy the specified predicate.

**Signature**

```ts
declare const every: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L709)

Since v2.0.0