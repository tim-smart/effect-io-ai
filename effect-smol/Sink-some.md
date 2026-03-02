Package: `effect`<br />
Module: `Sink`<br />

## Sink.some

A sink that returns whether an element satisfies the specified predicate.

**Signature**

```ts
declare const some: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L719)

Since v2.0.0