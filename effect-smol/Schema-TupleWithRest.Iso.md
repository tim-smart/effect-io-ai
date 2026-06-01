Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.Iso

Computes the iso tuple type for a `TupleWithRest`.

**Details**

The output starts with the fixed tuple's `Iso` elements, continues with zero
or more values using the first rest schema's `Iso`, and includes any trailing
rest schemas as fixed tuple positions.

**Signature**

```ts
type Iso<T, Rest> = Rest extends
    readonly [infer Head extends Top, ...infer Tail extends ReadonlyArray<Top>] ? Readonly<[
      ...T,
      ...Array<Head["Iso"]>,
      ...{ readonly [K in keyof Tail]: Tail[K]["Iso"] }
    ]> :
    T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3988)

Since v4.0.0