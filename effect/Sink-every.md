Package: `effect`<br />
Module: `Sink`<br />

## Sink.every

A sink that returns whether all elements satisfy the specified predicate.

**When to use**

Use to reduce a stream to a boolean that is true only when every input
satisfies a pure predicate.

**See**

- `some` for the dual any-match check

**Signature**

```ts
declare const every: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L824)

Since v2.0.0