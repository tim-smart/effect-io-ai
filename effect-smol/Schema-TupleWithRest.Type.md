Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.Type

Computes the decoded tuple type for a `TupleWithRest`.

**Details**

The output starts with the fixed tuple elements, continues with zero or more
values decoded by the first rest schema, and includes any trailing rest schemas
as fixed tuple positions.

**Signature**

```ts
type Type<T, Rest> = Rest extends
    readonly [infer Head extends Top, ...infer Tail extends ReadonlyArray<Top>] ? Readonly<[
      ...T,
      ...Array<Head["Type"]>,
      ...{ readonly [K in keyof Tail]: Tail[K]["Type"] }
    ]> :
    T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4092)

Since v3.10.0