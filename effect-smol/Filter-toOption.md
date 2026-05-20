Package: `effect`<br />
Module: `Filter`<br />

## Filter.toOption

Converts a `Filter` into a function that returns `Some` for passed values
and `None` for filtered-out values.

**Signature**

```ts
declare const toOption: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => (input: A) => Option.Option<Pass>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L678)

Since v4.0.0