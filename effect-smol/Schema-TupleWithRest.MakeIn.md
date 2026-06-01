Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.MakeIn

Computes the constructor input tuple type for `TupleWithRest`.

**Details**

The leading tuple's make input elements are kept first. The make input type of
the first rest schema may repeat zero or more times, and the make input types
of any additional rest schemas become required trailing tuple elements.

**Signature**

```ts
type MakeIn<M, Rest> = Rest extends
    readonly [infer Head extends Top, ...infer Tail extends ReadonlyArray<Top>] ? readonly [
      ...M,
      ...Array<Head["~type.make"]>,
      ...{ readonly [K in keyof Tail]: Tail[K]["~type.make"] }
    ] :
    M
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4028)

Since v4.0.0