Package: `effect`<br />
Module: `Sink`<br />

## Sink.take

Collects up to `n` input elements into an array.

**Details**

If `n` is less than or equal to zero, the sink completes with an empty array.
If more elements are pulled than needed, the remaining elements from the same
array are returned as leftovers.

**Signature**

```ts
declare const take: <In>(n: number) => Sink<Array<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1121)

Since v2.0.0