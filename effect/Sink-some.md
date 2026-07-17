Package: `effect`<br />
Module: `Sink`<br />

## Sink.some

A sink that returns whether an element satisfies the specified predicate.

**When to use**

Use to reduce a stream to a boolean that is true when any input satisfies a
pure predicate.

**See**

- `every` for the all-match check

**Signature**

```ts
declare const some: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L844)

Since v2.0.0