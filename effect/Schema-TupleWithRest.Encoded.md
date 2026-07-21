Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.Encoded

Computes the encoded tuple type for `TupleWithRest`.

**Details**

The leading tuple's encoded elements are kept first. The encoded type of the
first rest schema may repeat zero or more times, and the encoded types of any
additional rest schemas become required trailing tuple elements.

**Signature**

```ts
type Encoded<E, Rest> = Rest extends
    readonly [infer Head extends Constraint, ...infer Tail extends ReadonlyArray<Constraint>] ? readonly [
      ...E,
      ...Array<Head["Encoded"]>,
      ...{ readonly [K in keyof Tail]: Tail[K]["Encoded"] }
    ] :
    E
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4389)

Since v3.10.0